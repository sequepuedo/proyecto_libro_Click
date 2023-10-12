-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2023 a las 02:07:52
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `idhistorial` int(11) NOT NULL,
  `idusuario` int(10) NOT NULL,
  `idlibro` int(10) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `estado` enum('guardado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`idhistorial`, `idusuario`, `idlibro`, `titulo`, `estado`) VALUES
(2, 17, 6, 'Robinson Crusoe', 'guardado'),
(3, 17, 7, 'La vuelta al mundo en 80 días', 'guardado'),
(4, 17, 10, 'Colmillo blanco', 'guardado'),
(5, 17, 13, 'Viaje al centro de la Tierra', 'guardado'),
(6, 17, 12, '20.000 leguas de viaje submarino', 'guardado'),
(7, 17, 14, 'El Señor de los Anillos', 'guardado'),
(8, 17, 41, 'Cien años de soledad', 'guardado'),
(9, 17, 19, 'Dune', 'guardado'),
(10, 34, 5, 'La isla del tesoro', 'guardado'),
(11, 34, 44, '1984', 'guardado'),
(12, 34, 26, 'La naranja mecánica', 'guardado'),
(13, 34, 54, 'Drácula', 'guardado'),
(14, 35, 17, 'Frankenstein', 'guardado'),
(15, 35, 37, 'Cómo construir una escuela de calidad para el siglo XXI', 'guardado'),
(16, 17, 18, 'Una odisea del espacio', 'guardado'),
(17, 17, 56, 'Jane Eyre', 'guardado'),
(18, 17, 16, 'El hobbit', 'guardado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `publicacion` int(4) NOT NULL,
  `genero` enum('Aventura','Ciencia','Educacion','Ficcion','Literatura') NOT NULL,
  `resumen` text NOT NULL,
  `portada` varchar(500) NOT NULL,
  `descarga` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `autor`, `publicacion`, `genero`, `resumen`, `portada`, `descarga`) VALUES
(5, 'La isla del tesoro', 'Robert Louis Stevenson', 1883, 'Aventura', 'Jim Hawkins, un joven marinero, encuentra un mapa del tesoro escondido en la isla del tesoro. Junto a un grupo de piratas, se embarca en una aventura para encontrar el tesoro, pero pronto se da cuenta de que no todo es lo que parece.', 'https://global-uploads.webflow.com/6034d7d1f3e0f52c50b2adee/6254531383a0b15e9a7f0db8_60463d3f9d802109b8311c43_9788418395192_isla20del20tesoro_ClC3A1sicos20Ilustrados_COVER.jpeg', 'http://web.seducoahuila.gob.mx/biblioweb/upload/Robert%20Stevenson%20-%20La%20isla.pdf'),
(6, 'Robinson Crusoe', 'Daniel Defoe', 1719, 'Aventura', 'Robinson Crusoe es un marinero inglés que naufraga en una isla desierta. Durante 28 años, Crusoe deberá aprender a sobrevivir en la naturaleza, mientras espera ser rescatado.', 'https://resumen.club/wp-content/uploads/2021/11/robinson-crusoe-resumen.jpg', 'https://www.suneo.mx/literatura/subidas/Daniel%20Defoe%20Robinson%20Crusoe.pdf'),
(7, 'La vuelta al mundo en 80 días', 'Julio Verne', 1872, 'Aventura', 'Phileas Fogg, un caballero inglés, hace una apuesta de que puede dar la vuelta al mundo en 80 días. Acompañado de su mayordomo Passepartout, Fogg emprende un viaje lleno de aventuras por todo el mundo.', 'https://www.penguinlibros.com/co/1712406/julio-verne-la-vuelta-al-mundo-en-80-dias-edicion-actualizada-ilustrada-y-adaptada.jpg', 'http://web.seducoahuila.gob.mx/biblioweb/upload/Julio%20Verne%20-%20Vuelta%20al%20Mundo%20en%2080%20Dias.pdf'),
(8, 'Las aventuras de Tom Sawyer', 'Mark Twain', 1876, 'Aventura', 'Tom Sawyer es un niño travieso que vive en un pequeño pueblo de Estados Unidos. Junto a su amigo Huckleberry Finn, Tom vivirá una serie de aventuras, como la búsqueda de un tesoro escondido, la huida de unos piratas y la lucha contra una banda de ladrones.', 'https://www.penguinlibros.com/co/1712554/las-aventuras-de-tom-sawyer.jpg', 'https://biblioteca.org.ar/libros/656398.pdf'),
(9, 'Los tigres de Mompracem', 'Emilio Salgari', 1896, 'Aventura', 'Sandokan es un pirata malayo que lucha por la independencia de su país. Junto a su tripulación, Sandokan se enfrentará a los británicos y otros enemigos que quieren dominar Mompracem.', 'https://www.penguinlibros.com/co/1712507/sandokan-1-los-tigres-de-mompracem.jpg', 'https://web.seducoahuila.gob.mx/biblioweb/upload/Los%20Tigres%20de%20Mompracem.pdf'),
(10, 'Colmillo blanco', 'Jack London', 1906, 'Aventura', 'Colmillo blanco es un lobo que es criado por un hombre. El lobo se convierte en un animal feroz y salvaje, pero también es leal y protector de su familia humana.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/3f/f6/3ff66732d11233f8d049bb8ab1a95c7f.jpg', 'https://web.seducoahuila.gob.mx/biblioweb/upload/London,%20Jack%20-%20Colmillo%20blanco.pdf'),
(11, 'Los tres mosqueteros', 'Alejandro Dumas', 1844, 'Aventura', 'D\'Artagnan, un joven gascón, llega a París para convertirse en mosquetero. Allí, conoce a Athos, Porthos y Aramis, tres mosqueteros que se convertirán en sus mejores amigos. Juntos, los cuatro mosqueteros vivirán una serie de aventuras, como la lucha contra el cardenal Richelieu y la búsqueda de la reina Ana de Austria.', 'https://www.penguinlibros.com/co/2299915/los-tres-mosqueteros.jpg', 'https://www.argentina.gob.ar/sites/default/files/los_tres_mosqueteros_dumas.pdf'),
(12, '20.000 leguas de viaje submarino', 'Julio Verne', 1870, 'Aventura', 'El capitán Nemo, un misterioso personaje, dirige un submarino llamado Nautilus. El profesor Pierre Aronnax, su criado Conseil y el arponero Ned Land se embarcan en un viaje a bordo del Nautilus, donde vivirán una serie de aventuras bajo el mar.', 'https://www.planetadelibros.com.co/usuaris/libros/fotos/338/m_libros/337056_portada_veinte-mil-leguas-de-viaje-submarino_jules-verne_202105251825.jpg', 'https://www.argentina.gob.ar/sites/default/files/20_mil_leguas_de_viaje_submarino-julio_verne.pdf'),
(13, 'Viaje al centro de la Tierra', 'Julio Verne', 1864, 'Aventura', 'El profesor Otto Lidenbrock y su sobrino Axel descubren un documento que indica la ubicación de un pasaje al centro de la Tierra. Junto a Hans Bjelke, un guía islandés, los tres hombres se embarcan en un viaje a través del centro del planeta.', 'https://www.penguinlibros.com/co/1712432/julio-verne-viaje-al-centro-de-la-tierra-edicion-actualizada-ilustrada-y-adaptada.jpg', 'https://www.argentina.gob.ar/sites/default/files/verne_julio_-_viaje_al_centro_de_la_tierra.pdf'),
(14, 'El Señor de los Anillos', 'J. R. R. Tolkien', 1954, 'Aventura', 'Frodo Bolsón es un hobbit que debe destruir el Anillo Único, una poderosa arma que amenaza con destruir la Tierra Media. Frodo se embarca en un viaje acompañado de sus amigos Sam, Merry y Pippin, así como de Gandalf, un mago.', 'https://www.planetadelibros.com.co/usuaris/libros/fotos/365/m_libros/364924_portada_el-senor-de-los-anillos-n-0103-la-comunidad-del-anillo-ne_j-r-r-tolkien_202203111219.jpg', 'https://web.seducoahuila.gob.mx/biblioweb/upload/J.R.R.%20Tolkien%20La%20Comunidad%20del%20anillo%20I.pdf'),
(15, 'La historia interminable', 'Michael Ende', 1979, 'Aventura', 'Bastián Baltasar Bux es un niño que se refugia en una biblioteca para escapar de sus problemas. Allí, Bastian encuentra un libro llamado \"La historia interminable\", un libro que lo transporta al mundo de Fantasía, un mundo mágico que está en peligro.', 'https://faros.hsjdbcn.org/sites/default/files/styles/ficha-contenido/public/historia-interminable.jpg?itok=c3r8ku41', 'https://cdn.website-editor.net/6ea79b2447e44bbba6087346536e9583/files/uploaded/La%2520Historia%2520Interminable%2520-%2520Michael%2520Ende.pdf'),
(16, 'El hobbit', 'J. R. R. Tolkien', 1937, 'Aventura', 'Bilbo Bolsón es un hobbit que se embarca en una aventura para recuperar un tesoro perdido. Bilbo se une a una compañía de enanos para enfrentarse al dragón Smaug, que guarda el tesoro.', 'https://covers.openlibrary.org/b/id/12003282-L.jpg', 'https://web.seducoahuila.gob.mx/biblioweb/upload/J.R.R.%20Tolkien%20-%20El%20Hobbit.pdf'),
(17, 'Frankenstein', 'Mary Shelley', 1818, 'Ciencia', 'Victor Frankenstein, un joven científico, crea un monstruo a partir de partes de cadáveres. El monstruo, que es rechazado por la humanidad, se venga de su creador.', 'https://global-uploads.webflow.com/6034d7d1f3e0f52c50b2adee/625452f43a8fa502af2b8a14_6034d7d1f3e0f525c6b2b272_frankenstein-mary-shelley-editorial-alma.jpeg', 'https://web.seducoahuila.gob.mx/biblioweb/upload/Frankenstein%20o%20el%20moderno%20Prometeo-libro.pdf'),
(18, 'Una odisea del espacio', 'Arthur C. Clarke', 1968, 'Ciencia', 'Un grupo de astronautas descubre un monolito negro en la Luna. El monolito los lleva a Júpiter, donde descubren otro monolito que les indica el camino a un destino desconocido.', 'https://www.bne.es/es/Micrositios/Guias/NovelaCienciaFiccion/resources/images/2001_una_odisea_espacial_grande.JPG', 'http://rsefalicante.umh.es/TemasRelatGeneral/Documentos/Arthur%20C.%20Clarke%20-%202001%20Una%20odisea%20espacial.pdf'),
(19, 'Dune', 'Frank Herbert', 1965, 'Ciencia', 'Paul Atreides, el hijo de un duque, es enviado a gobernar el planeta Arrakis, un mundo desértico donde se encuentra la especia, una valiosa sustancia que prolonga la vida y potencia las habilidades mentales. Paul debe luchar contra sus enemigos para proteger a su familia y al planeta.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/86/9f/869fa8cf3c087c954b6a3b7293c31469.jpg', 'https://tienda.cyberdark.net/xpromo/xpdf/324ca09e7fc53da.pdf'),
(20, 'La Fundación', 'Isaac Asimov', 1951, 'Ciencia', 'Hari Seldon, un matemático, predice la caída del Imperio Galáctico. Para evitar el caos, Seldon crea la Fundación, una organización que se encargará de reconstruir la civilización tras la caída del Imperio.', 'https://www.mundoprotegido.com//wp-content/uploads/2008/07/fundacion.jpg', 'https://www.mercaba.org/SANLUIS/ALiteratura/Literatura%20contempor%C3%A1nea/Asimov,%20Issac/Fundaci%C3%B3n.PDF'),
(21, 'El juego de Ender', 'Orson Scott Card', 1985, 'Ciencia', 'Ender Wiggin, un niño prodigio, es entrenado para luchar contra una raza alienígena hostil. Ender debe aprender a controlar sus poderes para salvar a la humanidad.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/a5/2f/a52fac772f622cac9ed26232a8b9f541.jpg', 'https://carolinadonatoblog.wordpress.com/2014/09/30/descargar-el-juego-de-ender-orson-scott-card-pdf/'),
(22, 'Neuromancer', 'William Gibson', 1984, 'Ciencia', 'Case, un hacker, es contratado para robar un secreto gubernamental. Case debe viajar al ciberespacio, un mundo virtual donde la realidad y la ficción se mezclan.', 'https://images.cdn3.buscalibre.com/fit-in/360x360/17/6a/176af07a033c97a517ebb4ae3a133775.jpg', 'https://prepa.unimatehuala.edu.mx/pluginfile.php/7362/mod_glossary/attachment/1024/Neuromante%20-%20William%20Gibson.pdf'),
(23, 'El informe de la minoría', 'Philip K. Dick', 1956, 'Ciencia', 'El detective Dave Bowman investiga el asesinato de un hombre que ha viajado en el tiempo. Bowman descubre que el hombre es un replicante, un androide que es enviado al pasado para asesinar a un político.', 'https://assets.lectulandia.com/b/Philip%20K.%20Dick/El%20informe%20de%20la%20minoria%20(2820)/big.jpg', 'https://dialnet.unirioja.es/descarga/articulo/7692245.pdf'),
(24, 'El hombre en el castillo', 'Philip K. Dick', 1962, 'Ciencia', 'En una realidad alternativa, los nazis ganaron la Segunda Guerra Mundial. Un hombre llamado Robert Childan es un vendedor de antigüedades que se ve envuelto en una conspiración para asesinar a Adolf Hitler.', 'https://www.planetadelibros.com/usuaris/libros/thumbs/a49b2a23-693d-45ea-96b2-1a2056495556/d_295_510/portada_el-hombre-en-el-castillo_philip-k-dick_202101121606.webp', 'https://ddooss.org/libros/Philip_Dick.pdf'),
(25, 'El resplandor', 'Stephen King', 1977, 'Ciencia', 'Jack Torrance, un escritor, acepta un trabajo como cuidador de un hotel aislado durante el invierno. Jack pronto se da cuenta de que el hotel está embrujado y que su mente se está deteriorando.', 'https://storage.googleapis.com/catalogo-libros/extralarge/1d177faf-5584-f100-f40c-541c750b2397_imagen.jpg', 'https://gualeguaychu.gov.ar/apps/dashboard/ftp/biblioteca/45/45.pdf'),
(26, 'La naranja mecánica', 'Anthony Burgess', 1962, 'Ciencia', 'Alex DeLarge, un joven violento, es sometido a un tratamiento experimental para curar su comportamiento antisocial. El tratamiento funciona, pero Alex se da cuenta de que ha perdido su libertad.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/81/22/812252fdfa443853ac4f0c38d89a9690.jpg', 'http://web.seducoahuila.gob.mx/biblioweb/upload/Burgess,%20Anthony%20-%20La%20naranja%20mecanica.pdf'),
(27, 'Fahrenheit 451', 'Ray Bradbury', 1953, 'Ciencia', 'En un futuro distópico, los libros están prohibidos y los bomberos se encargan de quemarlos. Guy Montag, un bombero, comienza a cuestionarse la sociedad en la que vive.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/39/0c/390cf389c0c83ef393d8a0b763e856c0.jpg', 'https://veterinaria.uaemex.mx/images/Documentos_veterinaria/Cultura/Libros/7_Fahrenheit_451-Ray_Bradbury.pdf'),
(28, 'El señor de las moscas', 'William Golding', 1954, 'Ciencia', 'Un grupo de niños británicos se quedan varados en una isla desierta tras un accidente aéreo. Los niños se organizan para sobrevivir, pero pronto comienzan a mostrar su lado más oscuro.', 'https://images.cdn3.buscalibre.com/fit-in/360x360/fc/ae/fcae2c8f955be69dc785e1672414aae3.jpg', 'https://web.seducoahuila.gob.mx/biblioweb/upload/William%20Goldin%20-%20El%20Se%C3%B1or%20de%20las%20moscas.pdf'),
(29, 'El aprendizaje invisible', 'John Holt', 1976, 'Educacion', 'Holt argumenta que los niños aprenden mejor por sí mismos, a través de la experiencia y la exploración. Propone un modelo de educación basado en el aprendizaje activo y el descubrimiento.', 'https://i1.rgstatic.net/publication/324919044_Aprendizaje_Invisible_Hacia_una_nueva_ecologia_de_la_educacion/links/5aeb208eaca2725dabb68e70/largepreview.png', 'https://www.uv.es/bellochc/MasterPoliticas/Cobo_Moravec.pdf'),
(30, 'La Educación como práctica de la libertad', 'John Dewey', 1938, 'Educacion', 'Dewey sostiene que la educación debe centrarse en el desarrollo del pensamiento crítico y la resolución de problemas. Propone un modelo de educación basado en la experiencia y la colaboración.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/c9/89/c989db24a2b17222bb5cd3e8d8fc1c01.jpg', 'https://asslliuab.noblogs.org/files/2013/09/freire_educaci%C3%B3n_como_pr%C3%A1ctica_libertad.pdf_-1.pdf'),
(31, 'La representación del mundo en el niño', 'Jean Piaget', 1929, 'Educacion', 'Piaget describe el desarrollo cognitivo del niño, desde el nacimiento hasta la adolescencia. Su teoría sugiere que los niños aprenden a través de la exploración y la interacción con su entorno.', 'https://images.cdn2.buscalibre.com/fit-in/360x360/e1/8c/e18cd5708460a8332c2f83d54ffbe04a.jpg', 'https://edmorata.es/wp-content/uploads/2021/07/PIAGET.-La-representacion-del-mundo-en-el-nino_prw.pdf'),
(32, 'Aprendizaje basado en problemas, proyectos y casos: diseño e implementación de experiencias en la universidad', 'Mikel Garmendia Mujika, Jenaro Guisasola Aranzábal', 2014, 'Educacion', 'Proponen un modelo de educación basado en la resolución de problemas. Los estudiantes se enfrentan a desafíos complejos que requieren el uso de múltiples habilidades y conocimientos.', 'https://www.librouro.com/portadas/6/0/9/5/9/978849860959.JPG', 'https://web-argitalpena.adm.ehu.es/pdf/USWEB149592.pdf'),
(33, 'La escuela que aprende', 'Peter Senge', 1990, 'Educacion', 'Senge sostiene que las escuelas deben ser organizaciones que aprenden. Los estudiantes, los profesores y los administradores deben trabajar juntos para crear una cultura de aprendizaje continuo.', 'https://www.perlego.com/books/RM_Books/libreka_gcyawox/9788418381065.jpg', 'https://edmorata.es/wp-content/uploads/2020/09/SantosGuerra_PRW.pdf'),
(34, 'Aprendizaje activo', 'David Kolb', 1984, 'Educacion', 'Kolb propone un modelo de aprendizaje basado en la experiencia. Los estudiantes aprenden a través de la observación, la reflexión, la conceptualización y la experimentación.', 'https://i0.wp.com/www.actualidadenpsicologia.com/wp-content/uploads/2015/06/infografia_estilos_aprendizaje_Kolb.png', 'https://www.orientacionandujar.es/wp-content/uploads/2014/05/ESTILOS-DE-APRENDIZAJE_EL-MODELO-DE-KOLB.pdf'),
(35, 'La educación emocional', 'Daniel Goleman', 1995, 'Educacion', 'Goleman sostiene que la inteligencia emocional es tan importante como la inteligencia académica. Propone un programa de educación emocional que ayude a los estudiantes a desarrollar sus habilidades emocionales.', 'https://leadersummariespro.blob.core.windows.net/lsm/Entity/884338C8D3549F65ABF0302612AFF74E/F2069879A566CFA08E8B1974BC4A0B49/58b35360-5cf5-4d30-8a35-9172eb4ad13f.jpg', 'https://iuymca.edu.ar/wp-content/uploads/2022/01/La-Inteligencia-Emocional-Daniel-Goleman-1.pdf'),
(36, 'La educación en la era digital', 'Marc Prensky', 2001, 'Educacion', 'Prensky sostiene que los niños de hoy son nativos digitales. Propone un modelo de educación que incorpore las nuevas tecnologías en el aula.', 'https://image.slidesharecdn.com/educarenlaeradigital-180827062510/85/educar-en-la-era-digital-docencia-tecnologa-y-aprendizaje-1-320.jpg?cb=1666901407', 'https://www.ehu.eus/documents/6902252/12062098/B.+Oakley-La+educaci%C3%B1on+en+la+era+digital.pdf/46edcf4f-158e-7965-6d19-e6673bad9c1f'),
(37, 'Cómo construir una escuela de calidad para el siglo XXI', 'Andreas Schleicher', 2018, 'Educacion', 'Schleicher sostiene que el sistema educativo debe adaptarse a los cambios del siglo XXI. Propone un modelo de educación centrado en el aprendizaje personalizado y el desarrollo de habilidades del siglo XXI.', 'https://www.guao.org/sites/default/files/biblioteca/C%C3%B3mo%20construir%20una%20escuela%20de%20calidad.jpg', 'https://panorama.oei.org.ar/_dev2/wp-content/uploads/2018/12/Como-construir-una-escuela-de-calidad-WEB.pdf'),
(38, 'La otra historia de los Estados Unidos', 'Howard Zinn', 1980, 'Educacion', 'Zinn presenta una historia alternativa de los Estados Unidos, desde la perspectiva de los marginados y los oprimidos.', 'https://0.academia-photos.com/attachment_thumbnails/38031322/mini_magick20190226-29702-32napv.png?1551242663', 'http://www.iunma.edu.ar/doc/MB/lic_historia_mat_bibliografico/Historia%20Contempor%C3%A1nea/Bibliografia%20complementaria/la-otra-historia-de-ee-uu-howard-zinn.pdf'),
(39, 'Sapiens: De animales a dioses', 'Yuval Noah Harari', 2011, 'Educacion', 'Harari ofrece una historia de la humanidad desde la evolución de los homínidos hasta la actualidad.', 'https://eltercerespacio.files.wordpress.com/2019/07/978849992421.jpg', 'https://pmadsena.weebly.com/uploads/1/2/7/1/12712314/de-animales-a-dioses.pdf'),
(40, 'Los cañones de agosto', 'Barbara Tuchman', 1962, 'Educacion', 'Tuchman narra el estallido de la Primera Guerra Mundial, desde la perspectiva de los líderes políticos y militares de la época.', 'https://www.perlego.com/books/RM_Books/libreka_gcyawox/thumbnail_9788491871804.jpg', 'https://kupdf.net/download/los-canones-de-agosto-barbara-w-tuchman_5c294006e2b6f57d6963eef2_pdf'),
(42, 'Guía del autoestopista galáctico', 'Douglas Adams', 1979, 'Ficcion', 'Arthur Dent, un hombre inglés, está desayunando en su casa cuando un asteroide destruye la Tierra. Arthur es rescatado por su amigo Ford Prefect, quien resulta ser un extraterrestre que ha estado viviendo en la Tierra durante quince años con el pretexto de escribir una guía turística para la Guía del autoestopista galáctico. Ford lleva a Arthur a su nave espacial, la Heart of Gold, que funciona con un motor de improbabilidad infinita. Arthur y Ford se embarcan en un viaje a través del universo, conociendo a una variedad de criaturas alienígenas y enfrentándose a una serie de peligros. A lo largo de su viaje, Arthur aprende sobre la historia del universo y el lugar de la humanidad en él. También aprende sobre sí mismo y sobre lo que es importante en la vida.', 'https://www.anagrama-ed.es/uploads/media/portadas/0001/23/b8f4708a995f1138942b0062ff792efe842d4d0c.jpeg', 'http://www.reloco.com.ar/Douglas%20Adams%20-%20Gu%EDa%20del%20Autoestopista%20Gal%E1ctico.pdf'),
(43, 'La vida de Pi', 'Yann Martel', 2001, 'Ficcion', 'La historia de Pi Patel, un niño indio que sobrevive a un naufragio y se encuentra varado en un bote salvavidas con un tigre de Bengala.', 'https://m.media-amazon.com/images/I/91IS6Gd+gWL._AC_UF1000,1000_QL80_.jpg', 'https://www.formarse.com.ar/libros/Libros-recomendados-pdf/La%20vida%20de%20Pi-Yann%20Martel.pdf'),
(44, '1984', 'George Orwell', 1949, 'Ficcion', 'La historia de Winston Smith, un hombre que vive en una sociedad totalitaria. Winston lucha contra el gobierno y trata de encontrar la verdad.', 'https://images.cdn2.buscalibre.com/fit-in/360x360/33/f9/33f911d9a7ba713874725a96c341733f.jpg', 'https://www.philosophia.cl/biblioteca/orwell/1984.pdf'),
(45, 'El guardián entre el centeno', 'J. D. Salinger', 1951, 'Ficcion', 'La historia de Holden Caulfield, un adolescente que es expulsado de su escuela y se va de excursión por Nueva York. Holden reflexiona sobre su vida y sobre el mundo que lo rodea.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/08/0e/080ea011c406299e0166362d356ccc55.jpg', 'http://biblioteca2.ucab.edu.ve/anexos/biblioteca/marc/texto/AAM8264.pdf'),
(46, 'La metamorfosis', 'Franz Kafka', 1915, 'Ficcion', 'La historia de Gregor Samsa, un hombre que se despierta un día convertido en un insecto gigante. Gregor debe lidiar con su nueva condición y con la reacción de su familia y su jefe.', 'https://images.cdn3.buscalibre.com/fit-in/360x360/7c/f8/7cf84202b1f8676cee2ea47dc152ba1b.jpg', 'https://biblioteca.org.ar/libros/1587.pdf'),
(47, 'El amor en los tiempos del cólera', 'Gabriel García Márquez', 1985, 'Ficcion', 'La historia de amor entre Florentino Ariza y Fermina Daza, que dura más de medio siglo.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/b0/3e/b03e98118b9e2cf5b94bb0548bfa59c5.jpg', 'https://web.seducoahuila.gob.mx/biblioweb/upload/Garc%C3%ADa%20Gabriel%20-%20El%20amor%20en.pdf'),
(48, 'Cumbres borrascosas', 'Emily Brontë', 1847, 'Ficcion', 'La historia de Catherine Earnshaw y Heathcliff, dos amantes que están destinados a estar separados.', 'https://www.alianzaeditorial.es/imagenes/libros/grande/9788491819431-cumbres-borrascosas.jpg', 'https://www.suneo.mx/literatura/subidas/Charlotte%20Bront%C3%A9%20Cumbres%20Borrascosas.pdf'),
(49, 'El gran Gatsby', 'F. Scott Fitzgerald', 1925, 'Ficcion', 'La historia de Jay Gatsby, un hombre rico que organiza fiestas opulentas en su mansión. Gatsby está obsesionado con Daisy Buchanan, una mujer que está casada con un hombre rico.', 'https://www.perlego.com/books/RM_Books/libreka_gcyawox/9788418708374.jpg', 'https://www.imprentanacional.go.cr/editorialdigital/libros/literatura%20universal/el_gran_gatsby_edincr.pdf'),
(50, 'Orgullo y prejuicio', 'Jane Austen', 1813, 'Ficcion', 'La historia de Elizabeth Bennet, una joven que debe elegir entre dos pretendientes. Elizabeth debe superar sus prejuicios para encontrar el amor verdadero.', 'https://images.cdn3.buscalibre.com/fit-in/360x360/46/6b/466b0b47e932561b186c56358acbe55e.jpg', 'https://web.seducoahuila.gob.mx/biblioweb/upload/orgullo_y_prejuicio.pdf'),
(51, 'A través de mi ventana', 'Ariana Godoy', 2019, 'Ficcion', 'Cuenta la historia de Raquel, una joven que siente una gran atracción por su misterioso vecino Ares Hidalgo. Sin embargo, su día a día cambia radicalmente cuando él se fija en ella y se enamora, a pesar de la oposición de su familia.', 'https://panamericana.vtexassets.com/arquivos/ids/395489/a-traves-de-mi-ventana-9789585118669.jpg?v=637590259563030000', 'https://zonapdf.com/a-traves-de-mi-ventana/'),
(52, 'Crimen y castigo', 'Fyodor Dostoevsky', 1866, 'Ficcion', 'La historia de Raskolnikov, un estudiante que asesina a una vieja usurera. Raskolnikov cree que es un genio superior que está por encima de las leyes de la sociedad.', 'https://img1.od-cdn.com/ImageType-400/6251-1/16C/EF6/60/%7B16CEF660-A6A6-44ED-A372-D3C641D353EA%7DImg400.jpg', 'https://biblioteca.org.ar/libros/133531.pdf?fbclid=IwAR0u47qLP-ajQtvQN0OVztQ6ImPCNazTQpCMzPQp8vSnqEJ3IMgMEqac4pE'),
(53, 'La leyenda del jinete sin cabeza', 'Washington Irving', 1820, 'Literatura', 'La historia de Ichabod Crane, un maestro de escuela que es perseguido por un jinete sin cabeza.', 'https://images.cdn3.buscalibre.com/fit-in/360x360/b0/19/b01971d94e12753cdd22e769f86705a1.jpg', 'https://mep.janium.net/janium/Documentos/249260.pdf'),
(54, 'Drácula', 'Bram Stoker', 1897, 'Literatura', 'La historia de Jonathan Harker, un abogado que viaja a Transilvania para reunirse con el conde Drácula.', 'https://www.elejandria.com/covers/Dracula-Stoker_Bram-lg.png', 'https://www.elejandria.com/libro/dracula/stoker-bram/143'),
(55, 'Maleducada', 'Antonio Ortiz', 2016, 'Literatura', 'Maleducada nos relata la historia de Paula Beckwitt, una adolescente de clase alta que sufrió un accidente cerebrovascular y está en coma. En ese estado comienza a recordar con detalle todos los sucesos que la llevaron hasta ese punto.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/f3/56/f356ad0111e35d02e9de4fec3a53c150.jpg', 'https://pdfcoffee.com/maleducada-de-antonio-ortiz-5-pdf-free.html'),
(56, 'Jane Eyre', 'Charlotte Brontë', 1847, 'Literatura', 'La historia de Jane Eyre, una joven que lucha por encontrar su lugar en el mundo.', 'https://images.cdn2.buscalibre.com/fit-in/360x360/82/e8/82e8889ff8ef2f136f6960ddad3928a7.jpg', 'https://web.seducoahuila.gob.mx/biblioweb/upload/Jane%20Eyre.pdf'),
(57, 'Los miserables', 'Victor Hugo', 1862, 'Literatura', 'La historia de Jean Valjean, un exconvicto que intenta rehacer su vida.', 'https://image.cdn0.buscalibre.com/60e394828463b5f3158b4c90.__RS360x360__.jpg', 'https://web.seducoahuila.gob.mx/biblioweb/upload/V%C3%ADctor%20Hugo%20-%20Los%20miserables.pdf'),
(58, 'El libro de la selva', 'Rudyard Kipling', 1894, 'Literatura', 'Mowgli es un niño que se ha criado en la selva con los lobos. Con la ayuda de sus amigos, el oso Baloo, la pantera negra Bagheera y la serpiente Kaa, se enfrenta al terrible tigre Shere Khan. Cuando se hace mayor tiene que decidir si se queda con su familia de la selva o se va a vivir con los humanos.', 'https://resumen.club/wp-content/uploads/2021/12/el-libro-de-la-selva-resumen.jpg', 'https://www.argentina.gob.ar/sites/default/files/kipling_joseph_rudyard_-_el_libro_de_la_selva.pdf'),
(59, 'El retrato de Dorian Gray', 'Oscar Wilde', 1890, 'Literatura', 'La historia de Dorian Gray, un joven que vende su alma a cambio de la eterna juventud.', 'https://images.cdn2.buscalibre.com/fit-in/360x360/91/18/9118645bef1e527a3e1f14e7187ac89e.jpg', 'https://www.imprentanacional.go.cr/editorialdigital/libros/literatura%20universal/el_retrato_de_dorian_grey.pdf'),
(60, 'El guardián entre el centeno', 'J. D. Salinger', 1951, 'Literatura', 'El protagonista de \"El guardián entre el centeno\" es un chico normal que vive en la Nueva York de postguerra, lleno de dudas y miedos, enfrentado a un fracaso escolar que le frustra, con unos deseos alejados de la realidad, mediocre y, por tanto, extremadamente especial en su normalidad.', 'https://www.libros-prohibidos.com/wp-content/uploads/2016/01/7db9f4172b3d8a05da4c48f674abadff.jpg', 'http://biblioteca2.ucab.edu.ve/anexos/biblioteca/marc/texto/AAM8264.pdf'),
(61, 'El ruido y la furia', 'William Faulkner', 1929, 'Literatura', 'La historia de la familia Compson, una familia sureña en decadencia.', 'https://catedra.com/imagenes/libros/grande/9788437613741-el-ruido-y-la-furia.jpg', 'https://infolibros.org/libro/el-ruido-y-la-furia-william-faulkner/'),
(63, 'La casa de los espíritus', 'Isabel Allende', 1982, 'Literatura', 'La historia de la familia Trueba, una familia chilena durante un siglo.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/02/27/0227bc5fec74459c38f5d8b1cb0fd533.jpg', 'https://www.suneo.mx/literatura/subidas/Isabel%20Allende%20La%20Casa%20de%20los%20Esp%C3%ADritus.pdf'),
(64, 'Hombres de maíz', 'Miguel Ángel Asturias', 1949, 'Literatura', 'La historia de un pueblo maya que se enfrenta a la colonización española.', 'https://portadas.fondodeculturaeconomica.com/FEP/1000/FM11482.jpg', 'https://clubdelecturaesquipulas.files.wordpress.com/2016/06/hombres-de-maiz-miguel-angel-asturias.pdf'),
(65, 'El túnel', 'Ernesto Sabato', 1948, 'Literatura', 'La historia de Juan Pablo Castel, un pintor que asesina a María Iribarne.', 'https://palabrasylogos.odiseus.org/files/2013/06/EL-TUNEL-PORTADA.jpg', 'https://www.ues.mx/movilidad/Docs/MovilidadAcademica/Libro_El_Tunel.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `contrasena`) VALUES
(13, 'lusia', 'sanchez', 'lusia@gmail.com', 'lusiaqeup'),
(15, 'matias', 'carlos', 'matias@gmail.com', 'matias345dfs'),
(16, 'camilo', 'marquez', 'camilo@gmail.com', 'camilo1234'),
(17, 'juan', 'marquez ', 'juan@gmail.com', 'juan1234'),
(18, 'elian', 'marquez', 'elian@gmail.com', 'elian1234'),
(22, 'rodrigo', 'marquez', 'rodrigo@gmail.com', 'rodrigo123'),
(23, 'marcos', 'reyes', 'marcos@gmail.com', 'marcos123'),
(27, 'yorman', 'rodolfo', 'yorman@gmail.com', 'yorman123'),
(28, 'samuel', 'celiz', 'samuel@gmail.com', 'samuel123'),
(29, 'oscar', 'logan', 'oscar@gmail.com', 'oscar1234'),
(31, 'diego', 'casadiego', 'diego@gmail.com', 'diego1234'),
(32, 'junior', 'silva', 'junior@gmail.com', 'junior1234'),
(33, 'alberto', 'martines', 'alberto@gmail.com', 'martines'),
(34, 'gregorio', 'guarin', 'gregorio@gmail.com', 'g1234'),
(35, 'yorman', 'rodolfo', 'yorman1234@gmail.com', 'y1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`idhistorial`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `idhistorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
