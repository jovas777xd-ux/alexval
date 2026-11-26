-- ALEXVAL — configuración inicial de un proyecto Supabase NUEVO.
-- Ejecutar una sola vez en SQL Editor del proyecto exclusivo de ALEXVAL.
-- Nunca reutilizar el proyecto ni las cuentas de ELO.

create table public.administradores (
  usuario_id uuid primary key references auth.users(id) on delete cascade
);

create table public.productos (
  codigo text primary key default (
    'AV-' || upper(substr(replace(gen_random_uuid()::text, '-', ''), 1, 12))
  ),
  nombre text not null check (length(trim(nombre)) > 0),
  precio numeric(12,2) check (precio is null or precio >= 0),
  categoria text not null check (categoria in ('jugueteria','baterias')),
  imagen text,
  icono text not null default '✨',
  video text,
  activo boolean not null default false
);

alter table public.administradores enable row level security;
alter table public.productos enable row level security;

grant usage on schema public to anon, authenticated;
grant select on public.productos to anon, authenticated;
grant insert, update, delete on public.productos to authenticated;
grant select on public.administradores to authenticated;

create policy "ALEXVAL consultar permiso propio"
on public.administradores for select to authenticated
using (usuario_id = (select auth.uid()));

create policy "ALEXVAL publico ve activos"
on public.productos for select to anon, authenticated
using (activo = true);

create policy "ALEXVAL admin ve todo"
on public.productos for select to authenticated
using (
  exists(select 1 from public.administradores a
    where a.usuario_id = (select auth.uid()))
);

create policy "ALEXVAL admin agrega"
on public.productos for insert to authenticated
with check (
  exists(select 1 from public.administradores a
    where a.usuario_id = (select auth.uid()))
);

create policy "ALEXVAL admin edita"
on public.productos for update to authenticated
using (
  exists(select 1 from public.administradores a
    where a.usuario_id = (select auth.uid()))
)
with check (
  exists(select 1 from public.administradores a
    where a.usuario_id = (select auth.uid()))
);

create policy "ALEXVAL admin elimina ocultos"
on public.productos for delete to authenticated
using (
  activo = false
  and exists(select 1 from public.administradores a
    where a.usuario_id = (select auth.uid()))
);

-- Almacén público; la escritura está restringida a administradores.
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('productos','productos', true, 5242880,
        array['image/jpeg','image/png','image/webp'])
on conflict (id) do nothing;

create policy "ALEXVAL admin consulta archivos"
on storage.objects for select to authenticated
using (
  bucket_id = 'productos'
  and exists(select 1 from public.administradores a
    where a.usuario_id = (select auth.uid()))
);

create policy "ALEXVAL admin sube archivos"
on storage.objects for insert to authenticated
with check (
  bucket_id = 'productos'
  and name like 'catalogo/%'
  and exists(select 1 from public.administradores a
    where a.usuario_id = (select auth.uid()))
);

create policy "ALEXVAL admin reemplaza archivos"
on storage.objects for update to authenticated
using (
  bucket_id = 'productos'
  and exists(select 1 from public.administradores a
    where a.usuario_id = (select auth.uid()))
)
with check (
  bucket_id = 'productos'
  and exists(select 1 from public.administradores a
    where a.usuario_id = (select auth.uid()))
);

create policy "ALEXVAL admin elimina archivos"
on storage.objects for delete to authenticated
using (
  bucket_id = 'productos'
  and exists(select 1 from public.administradores a
    where a.usuario_id = (select auth.uid()))
);

-- Después de crear una cuenta en Authentication > Users,
-- asignarla como administradora MANUALMENTE desde SQL Editor:
--
-- insert into public.administradores(usuario_id)
-- select id from auth.users where email = 'CORREO_DE_LA_ADMINISTRADORA';
--
-- Nunca subir credenciales, contraseñas o claves secretas a GitHub.
