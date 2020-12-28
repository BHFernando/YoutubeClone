-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-12-2020 a las 20:01:07
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `youtube`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canal`
--

CREATE TABLE `canal` (
  `Id` varchar(250) NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `Suscriptores` double NOT NULL,
  `Logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `canal`
--

INSERT INTO `canal` (`Id`, `Nombre`, `Suscriptores`, `Logo`) VALUES
('escueladigitalperu', 'EDteam', 359000, 'https://yt3.ggpht.com/ytc/AAUvwnhRL1PzyIR4qftWnofOtsyvheGq_wQpMe1XVOJ7YQ=s176-c-k-c0x00ffffff-no-rj'),
('mejorandolaweb', 'Platzi', 500000, 'https://yt3.ggpht.com/ytc/AAUvwnjkcPvhO7PShVgFaw4lqoEwhyWbG6w0tvqz6rj8ig=s176-c-k-c0x00ffffff-no-rj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `Ip` varchar(250) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Id_video` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `likes`
--

INSERT INTO `likes` (`Ip`, `Tipo`, `Id_video`) VALUES
('1', 2, '2'),
('189.217.24.172', 1, 'b7qx2dZOlGM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `Id` varchar(250) NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `Descripcion` longtext NOT NULL,
  `Likes` double NOT NULL,
  `Dislikes` double NOT NULL,
  `Vistas` double NOT NULL,
  `Fecha` varchar(50) NOT NULL,
  `Url` longtext NOT NULL,
  `IdCanal` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`Id`, `Nombre`, `Descripcion`, `Likes`, `Dislikes`, `Vistas`, `Fecha`, `Url`, `IdCanal`) VALUES
('b7qx2dZOlGM', 'PHP no está muerto, andaba de parranda', 'Aprovecha en https://platzi.com/l/navidad-yt/ el precio especial de Navidad del plan anual de Platzi\r\nObtén un año de educación ilimitada para ti y para alguien más\r\n?????????????????????????\r\n. No, PHP no está muerto, al contrario, su robustez como lenguaje de programación está creciendo exponencialmente, al punto de que con PHP no solo podrás hacer desarrollo web, sino que también podrás hacer machine learning, inteligencia artificial y mucho más. \r\n\r\nItalo Morales, profesor de varios de nuestros cursos de PHP en Platzi, te contará TODAS las razones por las que PHP debe ser el lenguaje que debes aprender en este 2021.\r\n\r\n-----------------------------\r\nTodo esto y más, en https://platzi.com\r\n\r\n\r\n@recent-platzi\r\n@xmas-platzi\r\n', 1401, 15, 2000, '05/12/2020', 'http://dl220.y2mate.com/?file=M3R4SUNiN3JsOHJ6WWQ2a3NQS1Y5ZGlxVlZIOCtyZ1VzT1Z4eVI5b0JMaFk0NjU4a3NYeGFNUmFLN1Vid3Mvd01wVlYrenJaYzlIQU5BckNwcGswVUhLUDg5Y0M2RytYbzU1dVZOa2xFQkR4bCtPY2hqQmlnVnF3TFA3VUdxMUNlSFYrNWhKRjNqYkhpYVB5dTFDcWxXVC9xa3lYYVdvSnZUWkFjTDdBK1k5MzIyYjBhdVR3MHE4SXVDT045cFYyMi82WnRRUDMvTFk3aDh4MFRGWjFmWlJjNXBpaXp1aWVvWDAyakw0eDVSejA4YksyU0pNbFNPT2JZU2Q1TENjZDRPTHFBVXBJbjMxSnJUL3VyL1pqL1drVGRQMGt2VHJ0cUthOU1XL2ViZFNyWElmVg%3D%3D', 'mejorandolaweb'),
('F3WwOX_KSdg', 'El agua cotiza en bolsa, ¿empezó el fin del mundo?', 'Aprovecha en https://platzi.com/l/navidad-yt/ el precio especial de Navidad del plan anual de Platzi\r\nObtén un año de educación ilimitada para ti y para alguien más\r\n?????????????????????????\r\n. Esta semana una noticia con tintes apocalípticos sacudió al mundo: el agua empezó a cotizarse en el mundo. Las predicciones, opiniones y consejos de expertos y no expertos no tardaron en invadir las redes sociales y medios de comunicación, pero, ¿a quién creerle?\r\n\r\n¿Será este el preámbulo del fin del mundo? Antes de que te hagas ideas, escucha a Freddy Vega, CEO y co-fundador de Platzi, quien hoy resolverá esta pregunta. \r\n\r\n-----------------------------\r\nTodo esto y más, en https://platzi.com\r\n\r\nSíguenos\r\nFacebook: https://platzi.com/l/fHl6pows/\r\nTwitter: https://platzi.com/l/0DJ5PONB/\r\nInstagram: https://platzi.com/l/jt260ue0/\r\n\r\n@recent-platzi\r\n@xmas-platzi\r\n', 11500, 300, 40000, '06/12/2020', 'http://dl130.y2mate.com/?file=M3R4SUNiN3JsOHJ6WWQ2a3NQS1Y5ZGlxVlZIOCtyZ0JsSjQ3d0FVaVNxaERzb1ExMXErbExZSk5JYXNjek0vd01wVVIxbXlkVS9hT1BSK01yTjBGRVRhanBKMDR0WFRKK29CclhjeDlIUnZ0bGVLczAySlF0bGFsSm9qZFc3VkdPVEY5cWt4bTdEYVMyUG1KL0VmZXFuSzRzMWlCYVdGWWxEWWJhYkNDMTVzTmgwL1NQZnJseDVWTHJpbVNxZGNDMy95aXRRYmp3bzA5dDhoOFJFVkxkcDVpMjVYNXpQSHpvRW9KaFlNVDVVaW9sdVN2Q0tFeEdhbWhkQ0orT2kwMno3ellTelFtOEE0dC9HdUJwLzk5dm5CSGZMQWhybWVzNmZ2N1l5dVJjOGVySHNmVWNyL3E4NXlvdHI5eXRsdkUrN0dVek04WnhGRDFIWTdzVUl3YnB4NXo%3D', 'mejorandolaweb'),
('nQj4p9jC78E', 'La historia del ajedrez computacional', '? Aprovecha en https://platzi.com/l/navidad-yt/ el precio especial de Navidad del plan anual de Platzi\r\n? Obtén un año de educación ilimitada para ti y para alguien más\r\n?????????????????????????\r\n. El ajedrez es un juego antiguo, tiene más de 1500 años de existencia. Pero más allá de ser solo un juego de estrategias, tiene una historia muy interesante, especialmente si hablamos del ajedrez computacional (sí, ese que juegas en tu computadora y que difícilmente le ganas cuando lo pones en el modo más difícil).\r\n\r\nY aunque no lo creas, el ajedrez computacional no es un tema de solo esta década, su origen estuvo hace cientos de años. Sus inicios fueron... algo desastrosos: descubrieron que la primera versión de este ajedrez inteligente era en realidad una persona escondida que movía las piezas como títeres.\r\n\r\nNuestro profesor David Aroesti te contará un poco más sobre esta historia y la gran relevancia que tiene el ajedrez computacional en la historia de las computadoras y del clásico juego de mesa.\r\n\r\n-----------------------------\r\nTodo esto y más, en https://platzi.com\r\n\r\nSíguenos\r\nFacebook: https://platzi.com/l/fHl6pows/\r\nTwitter: https://platzi.com/l/0DJ5PONB/\r\nInstagram: https://platzi.com/l/jt260ue0/\r\n\r\n@recent-platzi\r\n@xmas-platzi\r\n', 970, 23, 1500, '07/12/2020', 'http://dl232.y2mate.com/?file=M3R4SUNiN3JsOHJ6WWQ2a3NQS1Y5ZGlxVlZIOCtyZ0ltWjR5emdNM0RybEZwOFlyMHVqcklzTktLclVLMThHaEh0TkU0Q3JaY3RtRVBnNkZpY2wyR2lPUnVkc3Q3WG5KK29JbFp0bHdRaDZsM3JTRmp6NWpuUkwzZTUyZk03VkdPVElwaFVJbWdRQ0tudnpWclJDMnNIS2c3QURJWUNVMXVqSVlLZnJDK0o1MzBXekhVUGJ1MXBRWHFEeWc0WlZFeXVXSnRRTC96THcvdE9ON2IwNGdZOGxYK3MydCtzK2Q5UjlKa05jUnlobmlyUHEyRDR3d0NLeVRmR29oYUhKUnZycThEVU5PaVRZWDRtbmpwUGR6dVRGZUl2Z3NybkdpcE9IL05RPT0%3D\"', 'mejorandolaweb'),
('sLexw-z13Fo', '¿Qué es SCRUM?', '\r\nInscríbete al curso presencial de GraphQL en Lima en https://ed.team/cursos/graphql \r\n\r\nScrum es un framework de desarrollo agil adaptable a cada proyecto y circunstancia que permite entregar valor rápidamente. El equipo de scrum se divide en tres roles: El product owner, el scrum master y el equipo de desarrollo o development team. Para poder entregar resultados rápidos, Scrum divide el trabajo en sprints que suelen ser de dos semanas y al final del sprint debe entregarse una funcionalidad terminada.\r\n\r\nSi quieres saber más de Scrum y agregar esta habilidad a tu portafolio comienza en https://ed.team/cursos/scrum\r\n\r\n? Postula a la vacante de editor audiovisual: https://ed.team/comunidad/edteam-busc...\r\n\r\n? Ayudamos a las personas a desarrollarse y alcanzar sus sueños con cursos de programación, diseño y emprendimiento online y en español.\r\n#NuncaTeDetengas\r\n\r\n¡? Ahora puedes ser Premium gratis!\r\nDescubre como aquí ? https://ed.team/blog/tambien-soy-edteam\r\n\r\nWeb y comunidad EDteam\r\n? https://ed.team\r\n\r\nSé un estudiante premium en EDteam\r\n? https://ed.team/premium\r\n\r\n? LinkedIn: https://ed.team/linkedin\r\n? Instagram: https://ed.team/instagram\r\n? Twitter: https://ed.team/twitter\r\n? Facebook:https://ed.team/facebook\r\n', 3800, 16, 5000, '08/12/2020', 'http://dl231.y2mate.com/?file=M3R4SUNiN3JsOHJ6WWQ2a3NQS1Y5ZGlxVlZIOCtyaGh1NGQvNVRZU0ZPNXY5Y2dPanErbE1JSjhEWlU2NE0veE4rRUZwV2FJWVo2R0lGdlBzSkVxUjB5UjlzSTE1SHFkMVpjdlROMWtWQk85eWNDdWhtVXoyeUdrTzRyckRPcGJiR04rN1VOczNtM2VoK0RCdkNyOW9FSytwRitXWVJzWm5qNFRLcmpLb014dTJsYWFQNiswdzk0SXZYTFo1NEpaMCtLWW9Bajd4dTl2N293dENSTWhKTWdNbjRuOHhmV1I5eE5MMHMxTWpoLzM3L0d3VzQwalN3PT0%3D', 'escueladigitalperu'),
('wmnvlTnW8UA', 'Airbnb renace de las cenizas', '\r\nEl 2020 no fue fácil para Airbnb, su especialidad, el turismo, decayó hasta casi un 100% debido a la pandemia. La empresa se vio en la necesidad de despedir al 25% de su personal, su valor de 31.000 millones USD bajó hasta casi la mitad y tuvo que reinventarse ofreciendo experiencias en línea. Sin embargo, esta semana salió a la bolsa y renació entre las cenizas, sus acciones se elevaron un 142% y, hoy día, la empresa vale más que muchas cadenas de hoteles lujosos.\r\n\r\nEntérate de esto y más en nuestro #EDnews ??\r\n\r\nEstos son los cursos que llegaron a EDteam esta semana ?: \r\n??? HTML canvas desde cero: https://ed.team/cursos/canvas\r\n? Animación de personajes con After effects: https://ed.team/cursos/personajes\r\n\r\n? Te damos el poder para alcanzar tus sueños a través de la educación.\r\n? 100% de raza latina | 100% Remotos (5 años)\r\n? #NoTeDetengas ? #EDteamFunciona\r\n\r\nWeb y comunidad EDteam\r\n? https://ed.team\r\nSé un estudiante premium en EDteam\r\n? https://ed.team/premium\r\n? LinkedIn: https://ed.team/linkedin\r\n? Instagram: https://ed.team/instagram\r\n? Twitter: https://ed.team/twitter\r\n? Facebook:https://ed.team/facebook\r\n', 852, 27, 1200, '09/12/2020', 'http://dl224.y2mate.com/?file=M3R4SUNiN3JsOHJ6WWQ2a3NQS1Y5ZGlxVlZIOCtyZ0ZrY2M0eVJKb0U2NUNwNDRxbk9DbGFNVk9QZXdNeUlTckM5OUh2bnVQVXB2T1lseXNrcFlqVldDK3BvWmw2UytCL3A1MEg4OTRXaFBIaStlM25td3oyeUhzY2MzWkFMcFRLQ1ZkcmxBM2xuUzFtN1NHbnd5cXZueTVvZ09BWXlsQi8zQUtOT2ZTLzUxM3gyekZidlRoN0pRQWtpcWU4YVZLMy82VXJnRGwvTGM2dHRsaVRYdGpmcDVMMWE3NzZLajVoSGhJME1GTXlnT3B1YmJnQTRZbEZiZWJiVDU5TzM5WXY3KzNDMDVNbG5WSXZuKzM3S3A0dkROYktmSXR1VEx0ditIL095eU9MNU09\"', 'escueladigitalperu'),
('X0nrCvuSW7o', 'Facebook vs Apple', '? Te damos el poder para alcanzar tus sueños a través de la educación. \r\n? 100% de raza latina | 100% Remotos (5 años)\r\n? #NoTeDetengas ? #EDteamFunciona\r\n\r\n¡? Ahora puedes ser Premium gratis!\r\nDescubre como aquí ? https://ed.team/blog/tambien-soy-edteam\r\n\r\nWeb y comunidad EDteam\r\n? https://ed.team\r\n\r\nSé un estudiante premium en EDteam\r\n? https://ed.team/premium\r\n\r\n? LinkedIn: https://ed.team/linkedin\r\n? Instagram: https://ed.team/instagram\r\n? Twitter: https://ed.team/twitter\r\n? Facebook:https://ed.team/facebook\r\n', 913, 32, 7000, '10/12/2020', 'http://dl23.y2mate.com/?file=M3R4SUNiN3JsOHJ6WWQ2a3NQS1Y5ZGlxVlZIOCtyZ0NtZFkveFI4c0N1QmF0Y1lPeC9Tc0pvSUtlWVJFaU5qeE5QcGE4Q25MVG9IYmFGK1orSlUyRmpXSC90bzRoaS9PNTRaOUhKdFhUeG50ai9PaGszUWtyd3JsS3AyZk03c1RQMUZpOFUxaXh5UGR6LzdaOGxpenRYeXVvaytNWXk4MXBDZzBQT1hBL1pwMzBHM0ZhdUQzN0toVm96Uzg5STk2N2FlU2kxQ21tK0l1OXRGbENnSnhhNEJVeTUvaDF2M0orQlpQME1GTGp4L3o4TFBnRllob0Q3UFBLdz09', 'escueladigitalperu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canal`
--
ALTER TABLE `canal`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`Ip`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
