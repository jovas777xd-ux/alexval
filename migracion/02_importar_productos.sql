-- ALEXVAL — importar los 196 productos originales.
-- Ejecutar DESPUÉS de 01_configurar_supabase.sql en el proyecto de ALEXVAL.
-- No borrar ni sobrescribir productos existentes.
-- Los nombres de fotografías locales se conservan, ya están en GitHub.
insert into public.productos
  (codigo, nombre, categoria, precio, imagen, icono, video, activo)
select
  registro.id, registro.name, registro.category,
  registro.price, registro.image,
  coalesce(registro.icon, '✨'), registro.video, true
from jsonb_to_recordset($alexval$
[
  {
    "id": "JT-001",
    "name": "Abejitas",
    "category": "jugueteria",
    "price": 80,
    "icon": "✨",
    "image": "abejitas.jpeg"
  },
  {
    "id": "JT-002",
    "name": "Abejorro",
    "category": "jugueteria",
    "price": 90,
    "icon": "✨",
    "image": "abejorro.jpeg"
  },
  {
    "id": "JT-005",
    "name": "Abejorro Spider-Man",
    "category": "jugueteria",
    "price": 80,
    "icon": "✨",
    "image": "abejorrospiderman.jpeg"
  },
  {
    "id": "JT-006",
    "name": "Adrenocromo",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "adrenocromo.jpeg"
  },
  {
    "id": "JT-008",
    "name": "Afrodita",
    "category": "jugueteria",
    "price": 130,
    "icon": "✨",
    "image": "afrodita.jpeg"
  },
  {
    "id": "JT-009",
    "name": "Araña",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "araña.jpeg"
  },
  {
    "id": "JT-013",
    "name": "Batman",
    "category": "jugueteria",
    "price": 95,
    "icon": "✨",
    "image": "batman.jpeg"
  },
  {
    "id": "JT-014",
    "name": "Bazuca de 2 pulgadas",
    "category": "jugueteria",
    "price": 70,
    "icon": "✨",
    "image": "bazuca2pulgadas.jpeg"
  },
  {
    "id": "JT-015",
    "name": "Bazuquín",
    "category": "jugueteria",
    "price": 500,
    "icon": "✨",
    "image": "bazuquin.jpeg"
  },
  {
    "id": "JT-016",
    "name": "Bengala de humo",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "bengaladehumo.jpeg"
  },
  {
    "id": "JT-017",
    "name": "Billetes",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "billetes.jpeg"
  },
  {
    "id": "JT-018",
    "name": "Bob Esponja",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "bobesponja.jpeg"
  },
  {
    "id": "JT-019",
    "name": "Bola Barbie",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "bolabarbie.jpeg"
  },
  {
    "id": "JT-020",
    "name": "Bola de humo Gorila",
    "category": "jugueteria",
    "price": 90,
    "icon": "✨",
    "image": "boladehumogorila.jpeg"
  },
  {
    "id": "JT-021",
    "name": "Bola de humo Mega",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "boladehumomega.jpeg"
  },
  {
    "id": "JT-022",
    "name": "Bola de luz Chavo",
    "category": "jugueteria",
    "price": 90,
    "icon": "✨",
    "image": "boladeluzchavo.jpeg"
  },
  {
    "id": "JT-023",
    "name": "Bombón",
    "category": "jugueteria",
    "price": 90,
    "icon": "✨",
    "image": "bombon.jpeg"
  },
  {
    "id": "JT-024",
    "name": "Brainrots",
    "category": "jugueteria",
    "price": 350,
    "icon": "✨",
    "image": "brainroots.jpeg"
  },
  {
    "id": "JT-025",
    "name": "Buscapié",
    "category": "jugueteria",
    "price": 95,
    "icon": "✨",
    "image": "buscapie.jpeg"
  },
  {
    "id": "JT-026",
    "name": "Cajitas Bob Esponja",
    "category": "jugueteria",
    "price": 45,
    "icon": "✨",
    "image": "cajitasbob.jpeg"
  },
  {
    "id": "JT-027",
    "name": "Cajita silbato",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "cajitasilbato.jpeg"
  },
  {
    "id": "JT-028",
    "name": "Cake Amazonas · 100 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeamazonas100tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=IhOmuaZ56nU"
  },
  {
    "id": "JT-029",
    "name": "Cake Armonía · 19 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakearmonia19tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=3M7VSc-q1iQ"
  },
  {
    "id": "JT-030",
    "name": "Cake Azteca · 36 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeazteca36tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=1dHbEX_quHM"
  },
  {
    "id": "JT-031",
    "name": "Cake Big Bang · 49 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakebigbang49tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=u_8-cg9bOEA"
  },
  {
    "id": "JT-032",
    "name": "Cake Bolero · 25 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakebolero25tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=KJtcD06KEGg"
  },
  {
    "id": "JT-033",
    "name": "Cake Bora Bora · 16 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeborabora16tiros.jpeg"
  },
  {
    "id": "JT-034",
    "name": "Cake Brasil · 19 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakebrasil19tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=aJcS4p7_aDc"
  },
  {
    "id": "JT-035",
    "name": "Cake Brillante · 100 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakebrillante100tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=LKNug7uwHHE"
  },
  {
    "id": "JT-036",
    "name": "Cake Celebración · 100 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakecelebracion100tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=eEkPbq-5eQk"
  },
  {
    "id": "JT-037",
    "name": "Cake Confeti de luces · 16 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeconfetideluces16tiros.jpeg"
  },
  {
    "id": "JT-038",
    "name": "Cake Cosmopolitan · 30 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakecosmopolitan30tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=uAqS7hxkatI"
  },
  {
    "id": "JT-039",
    "name": "Cake España · 19 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeespaña19tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=TW5IPzMKt-w"
  },
  {
    "id": "JT-040",
    "name": "Cake Espectacular · 100 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeespectacular100tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=qUvYZPf3BC4"
  },
  {
    "id": "JT-041",
    "name": "Cake Estelar · 100 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeestelar100tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=VoA-tE388fY"
  },
  {
    "id": "JT-042",
    "name": "Cake Fantasía · 19 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakefantasia19tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=b7qhWajox5w"
  },
  {
    "id": "JT-043",
    "name": "Cake Felicidad",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakefelicidad.jpeg",
    "video": "https://www.youtube.com/watch?v=98_RVTnO33Q"
  },
  {
    "id": "JT-044",
    "name": "Cake Feliz Año · 70 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakefelizaño70tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=MKFyZlLqtuY"
  },
  {
    "id": "JT-045",
    "name": "Cake Feria · 47 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeferia47tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=kksUadxpxNk"
  },
  {
    "id": "JT-046",
    "name": "Cake Festival · 100 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakefestival100tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=vwEx4qZJl7Q"
  },
  {
    "id": "JT-047",
    "name": "Cake Fiesta · 100 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakefiesta100tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=FzL1NxlCKmk"
  },
  {
    "id": "JT-048",
    "name": "Cake Fiesta Hawaiana · 30 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakefiestahawaiana30tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=DUTR-sjzATs"
  },
  {
    "id": "JT-049",
    "name": "Cake Fiesta Latina · 42 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakefiestalatina42tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=EOlkz6Tq23Y"
  },
  {
    "id": "JT-050",
    "name": "Cake Fortuna · 19 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakefortuna19tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=J8PDyylAMvQ"
  },
  {
    "id": "JT-051",
    "name": "Cake Happy · 100 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakehappy100tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=msn5_KSSr1Q"
  },
  {
    "id": "JT-052",
    "name": "Cake Hawái · 46 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakehawai46tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=XirgY64TgEU"
  },
  {
    "id": "JT-053",
    "name": "Cake Jackpot · 25 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakejackspot25tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=LiMVnHBJHSg"
  },
  {
    "id": "JT-054",
    "name": "Cake Japón · 19 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakejapon19tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=i0oFTsZYLLU"
  },
  {
    "id": "JT-055",
    "name": "Cake Las Vegas · 25 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakelasvegas25tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=nz75VffQmS8"
  },
  {
    "id": "JT-056",
    "name": "Cake Maya · 36 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakemaya36tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=FZVmBpt-Yrg"
  },
  {
    "id": "JT-057",
    "name": "Cake Medianoche",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakemedianoche.jpeg"
  },
  {
    "id": "JT-058",
    "name": "Cake México Power",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakemexicopower.jpeg",
    "video": "https://www.youtube.com/watch?v=2dgCUycydQU"
  },
  {
    "id": "JT-059",
    "name": "Cake Noche de Fiesta · 100 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakenochedefiesta100tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=8qR9YWemixE"
  },
  {
    "id": "JT-060",
    "name": "Cake Noche Mágica",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakenochemagica.jpeg",
    "video": "https://www.youtube.com/watch?v=XmKzfeHuECo&t=3s"
  },
  {
    "id": "JT-061",
    "name": "Cake Olmeca · 36 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeolmeca36tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=fCk0i9w4gt4"
  },
  {
    "id": "JT-062",
    "name": "Cake Paraíso · 100 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeparaiso100tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=7-6huSf7sBs&t=6s"
  },
  {
    "id": "JT-063",
    "name": "Cake Poker · 25 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakepoker25tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=r9e4hhrOpa0"
  },
  {
    "id": "JT-064",
    "name": "Cake Ranchera · 16 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeranchera16tiros.jpeg"
  },
  {
    "id": "JT-065",
    "name": "Cake Remolinos Multicolor · 16 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeremolinosmulticolor16tiros.jpeg"
  },
  {
    "id": "JT-066",
    "name": "Cake Ruleta · 25 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeruleta25tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=Yy13rNVxl4U"
  },
  {
    "id": "JT-067",
    "name": "Cake Rumba · 25 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakerumba25tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=J4RzSiL1u3c"
  },
  {
    "id": "JT-068",
    "name": "Cake Salsa · 25 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakesalsa25tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=_VA8JU4oEB8"
  },
  {
    "id": "JT-069",
    "name": "Cake Samba · 25 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakesamba25tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=DAagyyuGJk8"
  },
  {
    "id": "JT-070",
    "name": "Cake Show Verbena · 314 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeshowberbena314tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=bVkgXsYoW4w"
  },
  {
    "id": "JT-071",
    "name": "Cake Show Bravo · 200 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeshowbravo200tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=F30vlsk6qQw"
  },
  {
    "id": "JT-072",
    "name": "Cake Solado · 16 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakesolado16tiros.jpeg"
  },
  {
    "id": "JT-073",
    "name": "Cake Sonrisas · 19 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakesonrisas19tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=AtdyP4UHBbI"
  },
  {
    "id": "JT-074",
    "name": "Cake Storm · 49 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakestrom49tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=bSm16hLthRc"
  },
  {
    "id": "JT-075",
    "name": "Cake Super Show · 120 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakesupershow120tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=H1ItPv8O3kk"
  },
  {
    "id": "JT-076",
    "name": "Cake Tequila · 16 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "caketequila16tiros.jpeg"
  },
  {
    "id": "JT-077",
    "name": "Cake Tornado · 49 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "caketornado49tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=0PVRcPXD850"
  },
  {
    "id": "JT-078",
    "name": "Cake Torta Tropical",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "caketortatropical.jpeg",
    "video": "https://www.youtube.com/watch?v=Ew_pUgC43X4"
  },
  {
    "id": "JT-079",
    "name": "Cake USA · 19 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "cakeusa19tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=F6X6bKGq7TE"
  },
  {
    "id": "JT-080",
    "name": "Camelia",
    "category": "jugueteria",
    "price": 15,
    "icon": "✨",
    "image": "camelia.jpeg"
  },
  {
    "id": "JT-081",
    "name": "Camelia grande",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "cameliagrande.jpeg"
  },
  {
    "id": "JT-082",
    "name": "Acuarelas",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "cameliasminions.jpeg"
  },
  {
    "id": "JT-084",
    "name": "Capibara con cracker",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "capibaracracker.jpeg"
  },
  {
    "id": "JT-085",
    "name": "Capibaras luminosos",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "capibarasluminosos.jpeg"
  },
  {
    "id": "JT-086",
    "name": "Caramelito",
    "category": "jugueteria",
    "price": 55,
    "icon": "✨",
    "image": "caramelito.jpeg"
  },
  {
    "id": "JT-087",
    "name": "Caramelo grande",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "caramelogrande.jpeg"
  },
  {
    "id": "JT-088",
    "name": "Caramelo jumbo",
    "category": "jugueteria",
    "price": 65,
    "icon": "✨",
    "image": "caramelojumbo.jpeg"
  },
  {
    "id": "JT-089",
    "name": "Caramelo mediano",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "caramelomediano.jpeg"
  },
  {
    "id": "JT-090",
    "name": "Catarinas",
    "category": "jugueteria",
    "price": 55,
    "icon": "✨",
    "image": "catarinas.jpeg"
  },
  {
    "id": "JT-091",
    "name": "Cervecitas",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "cervesitas.jpeg"
  },
  {
    "id": "JT-092",
    "name": "Charro volador",
    "category": "jugueteria",
    "price": 55,
    "icon": "✨",
    "image": "charrovolador.jpeg"
  },
  {
    "id": "JT-093",
    "name": "Chisperos",
    "category": "jugueteria",
    "price": 25,
    "icon": "✨",
    "image": "chisperos.jpeg"
  },
  {
    "id": "JT-094",
    "name": "Chupacabras",
    "category": "jugueteria",
    "price": 45,
    "icon": "✨",
    "image": "chupacabras.jpeg"
  },
  {
    "id": "JT-095",
    "name": "Cigarros",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "cigarros.jpeg"
  },
  {
    "id": "JT-096",
    "name": "Cigarros Pall Mall",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "cigarrospallmall.jpeg"
  },
  {
    "id": "JT-097",
    "name": "Color Smoke Bomb",
    "category": "jugueteria",
    "price": 160,
    "icon": "✨",
    "image": "colorsmokebomb.jpeg"
  },
  {
    "id": "JT-098",
    "name": "Cometa",
    "category": "jugueteria",
    "price": 65,
    "icon": "✨",
    "image": "cometa.jpeg"
  },
  {
    "id": "JT-099",
    "name": "Cometa especial",
    "category": "jugueteria",
    "price": 75,
    "icon": "✨",
    "image": "cometaespecial.jpeg"
  },
  {
    "id": "JT-100",
    "name": "Cometa especial morado",
    "category": "jugueteria",
    "price": 80,
    "icon": "✨",
    "image": "cometaespecialmorado.jpeg"
  },
  {
    "id": "JT-101",
    "name": "Cometín",
    "category": "jugueteria",
    "price": 65,
    "icon": "✨",
    "image": "cometin.jpeg"
  },
  {
    "id": "JT-102",
    "name": "Cometón",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "cometon.jpeg"
  },
  {
    "id": "JT-103",
    "name": "Confeti de luces · 16 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "confetideluces16tiros.jpeg"
  },
  {
    "id": "JT-104",
    "name": "Cracker Boom",
    "category": "jugueteria",
    "price": 100,
    "icon": "✨",
    "image": "crackerboom.jpeg"
  },
  {
    "id": "JT-106",
    "name": "Cuete blanco",
    "category": "jugueteria",
    "price": 95,
    "icon": "✨",
    "image": "cueteblanco.jpeg"
  },
  {
    "id": "JT-107",
    "name": "Cuete blanco especial",
    "category": "jugueteria",
    "price": 100,
    "icon": "✨",
    "image": "cueteblancoespecial.jpeg"
  },
  {
    "id": "JT-108",
    "name": "Dollar",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "dollar.jpeg"
  },
  {
    "id": "JT-109",
    "name": "Dragon Ball Z con cracker",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "dragonballzcracker.jpeg"
  },
  {
    "id": "JT-110",
    "name": "Duvalín",
    "category": "jugueteria",
    "price": 45,
    "icon": "✨",
    "image": "duvalin.jpeg"
  },
  {
    "id": "JT-111",
    "name": "El Chavo con cracker",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "elcahvocracker.jpeg"
  },
  {
    "id": "JT-112",
    "name": "Emoji",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "emoji.jpeg"
  },
  {
    "id": "JT-113",
    "name": "Escorpiones",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "escorpiones.jpeg"
  },
  {
    "id": "JT-114",
    "name": "Escupidor de cracker",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "escupidordecracker.jpeg"
  },
  {
    "id": "JT-115",
    "name": "Escupidor de diamantina",
    "category": "jugueteria",
    "price": 45,
    "icon": "✨",
    "image": "escupidordediamantina.jpeg"
  },
  {
    "id": "JT-117",
    "name": "Espantasuegras",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "espantasuegras.jpeg"
  },
  {
    "id": "JT-118",
    "name": "Europa · 30 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "europa30tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=CQEi4P_rKkQ"
  },
  {
    "id": "JT-119",
    "name": "Fiesta Regia · 42 tiros",
    "category": "baterias",
    "price": null,
    "icon": "✨",
    "image": "fiestaregia42tiros.jpeg",
    "video": "https://www.youtube.com/watch?v=PVzqEAzpwk0"
  },
  {
    "id": "JT-120",
    "name": "Flash",
    "category": "jugueteria",
    "price": 130,
    "icon": "✨",
    "image": "flash.jpeg"
  },
  {
    "id": "JT-122",
    "name": "Florero de color",
    "category": "jugueteria",
    "price": 70,
    "icon": "✨",
    "image": "florerodecolor.jpeg"
  },
  {
    "id": "JT-123",
    "name": "Frozen",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "frozen.jpeg"
  },
  {
    "id": "JT-124",
    "name": "Gallinitas",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "gallinitas.jpeg"
  },
  {
    "id": "JT-125",
    "name": "Garapiñados",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "garapiñados.jpeg"
  },
  {
    "id": "JT-126",
    "name": "Gritito",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "gritito.jpeg"
  },
  {
    "id": "JT-127",
    "name": "Harley Quinn",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "harleyquinn.jpeg"
  },
  {
    "id": "JT-128",
    "name": "Hormiguero",
    "category": "jugueteria",
    "price": 90,
    "icon": "✨",
    "image": "hormiguero.jpeg"
  },
  {
    "id": "JT-129",
    "name": "Huevo de pato",
    "category": "jugueteria",
    "price": 70,
    "icon": "✨",
    "image": "huevodepato.jpeg"
  },
  {
    "id": "JT-130",
    "name": "Intensamente",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "intensamente.jpeg"
  },
  {
    "id": "JT-131",
    "name": "Juguitos",
    "category": "jugueteria",
    "price": 45,
    "icon": "✨",
    "image": "juguitos.jpeg"
  },
  {
    "id": "JT-133",
    "name": "Komodo 3000",
    "category": "jugueteria",
    "price": null,
    "icon": "✨",
    "image": "komodo3000.jpeg"
  },
  {
    "id": "JT-134",
    "name": "Lilo y Stitch con cracker",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "liloystitchcracker.jpeg"
  },
  {
    "id": "JT-135",
    "name": "Llorona",
    "category": "jugueteria",
    "price": null,
    "icon": "✨",
    "image": "llorona.jpeg"
  },
  {
    "id": "JT-136",
    "name": "Luciérnagas",
    "category": "jugueteria",
    "price": 45,
    "icon": "✨",
    "image": "luciernagas.jpeg"
  },
  {
    "id": "JT-137",
    "name": "Luciérnagas especiales",
    "category": "jugueteria",
    "price": 55,
    "icon": "✨",
    "image": "luciernagasespeciales.jpeg"
  },
  {
    "id": "JT-138",
    "name": "Luz de bengala",
    "category": "jugueteria",
    "price": null,
    "icon": "✨",
    "image": "luzdebengala.jpeg"
  },
  {
    "id": "JT-139",
    "name": "Luz de bengala especial",
    "category": "jugueteria",
    "price": null,
    "icon": "✨",
    "image": "luzdebengalaespecial.jpeg"
  },
  {
    "id": "JT-140",
    "name": "Luz de bengala grande",
    "category": "jugueteria",
    "price": null,
    "icon": "✨",
    "image": "luzdebengalagrande.jpeg"
  },
  {
    "id": "JT-141",
    "name": "Luz de bengala mediana",
    "category": "jugueteria",
    "price": null,
    "icon": "✨",
    "image": "luzdebengalamediana.jpeg"
  },
  {
    "id": "JT-144",
    "name": "Maruchan",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "maruchan.jpeg"
  },
  {
    "id": "JT-145",
    "name": "Mazapán",
    "category": "jugueteria",
    "price": 45,
    "icon": "✨",
    "image": "mazapan.jpeg"
  },
  {
    "id": "JT-146",
    "name": "Mazapán con cracker y color",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "mazapancrackerconcolor.jpeg"
  },
  {
    "id": "JT-150",
    "name": "Mini cangrejito",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "minicangrejito.jpeg"
  },
  {
    "id": "JT-151",
    "name": "Mini McQueen",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "minimcqueen.jpeg"
  },
  {
    "id": "JT-152",
    "name": "Minion con cracker",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "minioncracker.jpeg"
  },
  {
    "id": "JT-153",
    "name": "Minions",
    "category": "jugueteria",
    "price": 75,
    "icon": "✨",
    "image": "minions.jpeg"
  },
  {
    "id": "JT-155",
    "name": "Misil",
    "category": "jugueteria",
    "price": 90,
    "icon": "✨",
    "image": "misil.jpeg"
  },
  {
    "id": "JT-156",
    "name": "Misil con luz",
    "category": "jugueteria",
    "price": 300,
    "icon": "✨",
    "image": "misilconluz.jpeg"
  },
  {
    "id": "JT-158",
    "name": "Mosaico",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "mosaico.jpeg"
  },
  {
    "id": "JT-159",
    "name": "Mosaico de colores",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "mosaicocolores.jpeg"
  },
  {
    "id": "JT-160",
    "name": "Olaf",
    "category": "jugueteria",
    "price": 75,
    "icon": "✨",
    "image": "olaf.jpeg"
  },
  {
    "id": "JT-161",
    "name": "Olla grande",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "ollagrande.jpeg"
  },
  {
    "id": "JT-162",
    "name": "Olla mediana",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "ollamediana.jpeg"
  },
  {
    "id": "JT-163",
    "name": "Ollitas",
    "category": "jugueteria",
    "price": 25,
    "icon": "✨",
    "image": "ollitas.jpeg"
  },
  {
    "id": "JT-164",
    "name": "Orugas",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "orugas.jpeg"
  },
  {
    "id": "JT-165",
    "name": "Ovni",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "ovni.jpeg"
  },
  {
    "id": "JT-166",
    "name": "Ovni galáctico",
    "category": "jugueteria",
    "price": 45,
    "icon": "✨",
    "image": "ovnigalactico.jpeg"
  },
  {
    "id": "JT-167",
    "name": "Ovni Mixi",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "ovnimixi.jpeg"
  },
  {
    "id": "JT-168",
    "name": "Paleta Mickey",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "paletamicky.jpeg"
  },
  {
    "id": "JT-169",
    "name": "Paleta Spider-Man",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "paletaspider.jpeg"
  },
  {
    "id": "JT-170",
    "name": "Paleta Stitch",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "paletastitch.jpeg"
  },
  {
    "id": "JT-171",
    "name": "Paloma de luz",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "palomadeluz.jpeg"
  },
  {
    "id": "JT-172",
    "name": "Paloma mediana",
    "category": "jugueteria",
    "price": 130,
    "icon": "✨",
    "image": "palomamediana.jpeg"
  },
  {
    "id": "JT-173",
    "name": "Patitos",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "patitos.jpeg"
  },
  {
    "id": "JT-174",
    "name": "Pato",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "pato.jpeg"
  },
  {
    "id": "JT-175",
    "name": "Peppa Pig",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "peppapig.jpeg"
  },
  {
    "id": "JT-176",
    "name": "Pirinolas",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "pirinolas.jpeg"
  },
  {
    "id": "JT-177",
    "name": "Pistolita Free Fire",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "pistolitafreefire.jpeg"
  },
  {
    "id": "JT-179",
    "name": "Pulgas",
    "category": "jugueteria",
    "price": 300,
    "icon": "✨",
    "image": "pulgas.jpeg"
  },
  {
    "id": "JT-180",
    "name": "Pulgas de cracker",
    "category": "jugueteria",
    "price": 30,
    "icon": "✨",
    "image": "pulgasdecracker.jpeg"
  },
  {
    "id": "JT-181",
    "name": "R15",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "r15.jpeg"
  },
  {
    "id": "JT-183",
    "name": "Revelación de sexo",
    "category": "jugueteria",
    "price": null,
    "icon": "✨",
    "image": "revelaciondesexo.jpeg"
  },
  {
    "id": "JT-184",
    "name": "Revelación Pirostar",
    "category": "jugueteria",
    "price": null,
    "icon": "✨",
    "image": "revelacionpirostar.jpeg"
  },
  {
    "id": "JT-185",
    "name": "Rifas",
    "category": "jugueteria",
    "price": 150,
    "icon": "✨",
    "image": "rifas.jpeg"
  },
  {
    "id": "JT-186",
    "name": "Rockstar",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "rockstar.jpeg"
  },
  {
    "id": "JT-187",
    "name": "Rosa con cracker",
    "category": "jugueteria",
    "price": 100,
    "icon": "✨",
    "image": "rosadecracker.jpeg"
  },
  {
    "id": "JT-188",
    "name": "Rosa de luz",
    "category": "jugueteria",
    "price": 95,
    "icon": "✨",
    "image": "rosadelluz.jpeg"
  },
  {
    "id": "JT-189",
    "name": "Sabritas",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "sabritas.jpeg"
  },
  {
    "id": "JT-190",
    "name": "Silbato",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "silbato.jpeg"
  },
  {
    "id": "JT-191",
    "name": "Silbato loco",
    "category": "jugueteria",
    "price": 75,
    "icon": "✨",
    "image": "silbatoloco.jpeg"
  },
  {
    "id": "JT-192",
    "name": "Silbato loco Urba",
    "category": "jugueteria",
    "price": 30,
    "icon": "✨",
    "image": "silbatolocourba.jpeg"
  },
  {
    "id": "JT-193",
    "name": "Silbato Toro Loco",
    "category": "jugueteria",
    "price": 85,
    "icon": "✨",
    "image": "silbatotoroloco.jpeg"
  },
  {
    "id": "JT-195",
    "name": "Sorullo",
    "category": "jugueteria",
    "price": 30,
    "icon": "✨",
    "image": "sorullo.jpeg"
  },
  {
    "id": "JT-196",
    "name": "Super Mario",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "supermario.jpeg"
  },
  {
    "id": "JT-197",
    "name": "Super misil",
    "category": "jugueteria",
    "price": 300,
    "icon": "✨",
    "image": "supermisil.jpeg"
  },
  {
    "id": "JT-198",
    "name": "Super sonaja",
    "category": "jugueteria",
    "price": 450,
    "icon": "✨",
    "image": "supersonaja.jpeg"
  },
  {
    "id": "JT-199",
    "name": "Tamalitos",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "tamalitos.jpeg"
  },
  {
    "id": "JT-200",
    "name": "Tanque de guerra",
    "category": "jugueteria",
    "price": 65,
    "icon": "✨",
    "image": "tanquedeguerra.jpeg"
  },
  {
    "id": "JT-202",
    "name": "The Walking Dead con cracker",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "thewalkingdeathcracker.jpeg"
  },
  {
    "id": "JT-203",
    "name": "Torbellino",
    "category": "jugueteria",
    "price": 110,
    "icon": "✨",
    "image": "torbellino.jpeg"
  },
  {
    "id": "JT-205",
    "name": "Tormenta luminosa",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "tormentaluminosa.jpeg"
  },
  {
    "id": "JT-206",
    "name": "Tornado",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "tornado.jpeg"
  },
  {
    "id": "JT-207",
    "name": "Tortuguitas",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "tortuguitas.jpeg"
  },
  {
    "id": "JT-208",
    "name": "Trabuco",
    "category": "jugueteria",
    "price": 35,
    "icon": "✨",
    "image": "trabuco.jpeg"
  },
  {
    "id": "JT-209",
    "name": "Trabuco de colores",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "trabucodecolores.jpeg"
  },
  {
    "id": "JT-210",
    "name": "Trabuco especial",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "trabucoespecial.jpeg"
  },
  {
    "id": "JT-211",
    "name": "Trabuco de luz y cracker",
    "category": "jugueteria",
    "price": 60,
    "icon": "✨",
    "image": "trabucoluzycracker.jpeg"
  },
  {
    "id": "JT-213",
    "name": "Trabuquito luminoso",
    "category": "jugueteria",
    "price": 50,
    "icon": "✨",
    "image": "trabuquitoluminoso.jpeg"
  },
  {
    "id": "JT-215",
    "name": "Unicornio",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "unicornio.jpeg"
  },
  {
    "id": "JT-216",
    "name": "Vara Chiflador",
    "category": "jugueteria",
    "price": 70,
    "icon": "✨",
    "image": "Vara Chiflador.jpeg"
  },
  {
    "id": "JT-217",
    "name": "Vara pajarera",
    "category": "jugueteria",
    "price": 70,
    "icon": "✨",
    "image": "vara pajarera.jpeg"
  },
  {
    "id": "JT-218",
    "name": "Vara Urba",
    "category": "jugueteria",
    "price": 75,
    "icon": "✨",
    "image": "varaurba.jpeg"
  },
  {
    "id": "JT-219",
    "name": "Velitas personalizadas",
    "category": "jugueteria",
    "price": null,
    "icon": "✨",
    "image": "velitaspersonalizadas.jpeg"
  },
  {
    "id": "JT-220",
    "name": "Venom",
    "category": "jugueteria",
    "price": 40,
    "icon": "✨",
    "image": "venom.jpeg"
  },
  {
    "id": "JT-221",
    "name": "Volcán de diamantina",
    "category": "jugueteria",
    "price": 90,
    "icon": "✨",
    "image": "volcan de diamantina.jpeg"
  }
]
$alexval$::jsonb) as registro(
  id text, name text, category text, price numeric,
  icon text, image text, video text
)
on conflict (codigo) do nothing;

-- Verificación del catálogo:
select count(*) as total,
       count(*) filter (where activo) as visibles,
       count(*) filter (where categoria = 'jugueteria') as jugueteria,
       count(*) filter (where categoria = 'baterias') as baterias
from public.productos;
