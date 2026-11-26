# ALEXVAL — Preparación del catálogo administrable

**Estado:** preparado en una rama de trabajo; **NO PUBLICAR** hasta configurar Supabase y verificar la importación.

## Sitio original
- Repositorio: https://github.com/jovas777xd-ux/alexval
- El diseño original de Dragon Ball Z, los filtros, el buscador, el carrito y las cotizaciones por WhatsApp se mantienen.
- Se identificaron **196 productos**: 141 de juguetería, 55 de baterías y 64 sin precio fijo.
- Se validaron **196 fotografías utilizadas**, todas presentes en el repositorio; no hay que volverlas a subir.
- Se mantienen sus códigos originales, como `JT-001`, incluso en productos de categoría «baterías».
- El panel genera códigos nuevos automáticamente para nuevos productos.

## Pasos para activar (en orden)

1. Crear un **nuevo proyecto Supabase exclusivo de ALEXVAL**. NO usar el proyecto de ELO.
2. En el SQL Editor del nuevo proyecto, ejecutar `migracion/01_configurar_supabase.sql`. Crea tablas, bucket de fotografías y políticas RLS.
3. Ejecutar `migracion/02_importar_productos.sql`. Confirmar el resultado: **196 total, 196 visibles, 141 juguetería y 55 baterías**. La importación puede repetirse sin duplicar códigos.
4. En Supabase > Authentication > Users, dar de alta a la administradora autorizada. Asignarla en SQL Editor con su correo (no dejar datos privados en GitHub):
   ```sql
   insert into public.administradores (usuario_id)
   select id from auth.users
   where email = 'CORREO_DE_LA_ADMINISTRADORA';
   ```
   Comprobar que se insertó una fila; no enviar ni guardar contraseñas aquí.
5. En **esta rama**, editar `admin/config.js` usando ÚNICAMENTE la **Project URL** y la **publishable key** del proyecto nuevo. Son datos públicos de cliente. Nunca subir `sb_secret_`, `service_role` ni contraseñas.
6. Cuando todo esté listo, fusionar la solicitud de cambios a `main` para publicar el nuevo catálogo y su panel. **No fusionar antes**, porque `index.html` pasa a leer productos de Supabase.
7. Probar como visitante el catálogo y, como administradora, iniciar sesión en `/alexval/admin/`, buscar, agregar, editar, ocultar, mostrar y eliminar. Los productos nuevos inician **ocultos** hasta que se publiquen manualmente.

## Cómo funciona

- Los productos públicos se consultan desde `public.productos`, exclusivamente con `activo = true`.
- Los nuevos productos se almacenan en `public.productos`; fotografías nuevas se suben al bucket `productos` bajo `catalogo/`.
- Las fotografías originales siguen utilizándose desde GitHub Pages y los archivos de imagen existentes no cambian.
- La interfaz de administración está inspirada en el panel ELO, con una lista buscable, formularios y selector de dos categorías.
- El carrito conserva sus IDs de producto existentes y elimina del almacenamiento local aquellos códigos que ya no están visibles en la base.
- Supabase **separa por completo** administradores y productos de ALEXVAL respecto de ELO.

## Precauciones importantes

- GitHub contiene código y fotografías originales; los cambios de productos futuros residen en Supabase. Conviene crear copias de seguridad periódicas.
- La rama incluye una **versión preparada**, pero no garantiza funcionamiento en producción hasta verificar las credenciales públicas, las políticas y la carga inicial con el proyecto real.
- Mantener el panel reservado a la cuenta administradora. No permitir registros públicos de administradores ni exponer claves privadas.
- Si se edita el catálogo original antes de activar esta rama, revisar que los 196 registros reflejen la versión más reciente.
