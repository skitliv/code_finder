-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2019 a las 16:54:17
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.33


-- crete the data base

-- crete the data base
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `templates`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bootstrap`
--

CREATE TABLE `bootstrap` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `Numero1` int(55) NOT NULL,
  `Numero2` int(55) NOT NULL,
  `Numero3` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bootstrap`
--

INSERT INTO `bootstrap` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`) VALUES
(1, 'Es una prueba', 'Es una prueba 1', 'Es una prueba 2 ', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `command`
--

CREATE TABLE `command` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `Numero1` int(55) NOT NULL,
  `Numero2` int(55) NOT NULL,
  `Numero3` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `command`
--

INSERT INTO `command` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`) VALUES
(1, 'try', ' es solo una pruba nose si sirva', ' es solo una prueba', 0, 0, 0),
(2, 'open folder', 'start .  ', ' ', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `css`
--

CREATE TABLE `css` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `Numero1` int(100) NOT NULL,
  `Numero2` int(100) NOT NULL,
  `Numero3` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `css`
--

INSERT INTO `css` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`) VALUES
(1, 'flex center', '    #navIconStyle ul{\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n    }\r\n    #navIconStyle ul li a{\r\n        background-color: pink;\r\n        border-radius: 10px;\r\n        padding: 5px;\r\n        margin: 0px 2px;\r\n    }', ' display flex with justify and alingment at the center', 0, 0, 0),
(2, 'nav basic', '   #navIconStyle ul{\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n    }\r\n    #navIconStyle ul li a{\r\n        background-color: #9CE7FF;\r\n        border-radius: 10px;\r\n        padding: 5px;\r\n        margin: 0px 2px;\r\n    }\r\n    #navIconStyle ul li a:hover{\r\n        background-color: #0F61CC;\r\n        color: #9CE7FF;\r\n        text-decoration: none;\r\n    };', ' basic nav to work on', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `git`
--

CREATE TABLE `git` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(100) NOT NULL,
  `Numero1` int(11) NOT NULL,
  `Numero2` int(11) NOT NULL,
  `Numero3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `git`
--

INSERT INTO `git` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`) VALUES
(2, 'git commit ammend recent last ', ' git commit --amend -m \"an updated commit message\"', ' The git commit --amend command is a convenient way to modify the most recent commit.', 0, 0, 0),
(3, 'unstage reset', ' $ git reset -- filename.txt', ' unstage a specific file ', 0, 0, 0),
(4, 'undo changes in a single file ', ' git checkout  filename.txt', 'Undo any change made in a file  ', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `ID` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`ID`, `image`, `text`) VALUES
(0, 'sala.jpg', ''),
(0, 'sala.jpg', ''),
(0, 'sala.jpg', ''),
(0, 'sala.jpg', ''),
(0, 'sala.jpg', ''),
(0, 'sala.jpg', ''),
(0, 'sala.jpg', ''),
(0, 'sala.jpg', ''),
(0, 'sala.jpg', ''),
(0, 'sala.jpg', ''),
(0, '2018-06-09.png', ''),
(0, '2018-06-09.png', ''),
(0, '2018-06-09.png', ''),
(0, '2018-06-09.png', ''),
(0, '2018-06-17.png', ''),
(0, '2018-05-31.png', 'hola mundo'),
(0, '2018-05-31.png', 'hola mundo'),
(0, '2018-05-31.png', 'hola mundo'),
(0, 'baudelaire.jpg', ''),
(0, 'baudelaire.jpg', ''),
(0, 'baudelaire.jpg', ''),
(0, 'baudelaire.jpg', ''),
(0, 'baudelaire.jpg', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'charles.png', ''),
(0, 'charles.png', ''),
(0, 'charles.png', ''),
(0, 'charles.png', ''),
(0, 'charles.png', ''),
(0, 'charles.png', ''),
(0, 'charles.png', ''),
(0, 'charles.png', ''),
(0, 'charles.png', ''),
(0, 'charles.png', ''),
(0, 'fastnotes-05-31-18.txt', ''),
(0, 'fastnotes-05-31-18.txt', ''),
(0, 'fastnotes-05-25-2018.txt', ''),
(0, 'fastnotes-05-25-2018.txt', ''),
(0, 'sala.jpg', ''),
(0, 'sala.jpg', ''),
(0, 'lindacalabera.png', ''),
(0, 'lindacalabera.png', ''),
(0, 'lindacalabera.png', ''),
(0, '', ''),
(0, '', ''),
(0, '', ''),
(0, '', ''),
(0, '', ''),
(0, '', ''),
(0, '', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'triangulo.png', ''),
(0, 'triangulo.png', ''),
(0, 'triangulo.png', ''),
(0, 'header.jpg', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'cabracharles.png', ''),
(0, 'lindacalabera.png', ''),
(0, 'lindacalabera.png', ''),
(0, 'Arthur.png', ''),
(0, 'Arthur.png', ''),
(0, 'baudelaire.jpg', ''),
(0, 'baudelaire.jpg', ''),
(0, '', ''),
(0, 'header.jpg', ''),
(0, 'header.jpg', ''),
(0, 'bible-530340_1280.jpg', ''),
(0, 'bible-530340_1280.jpg', ''),
(0, 'bible-530340_1280.jpg', ''),
(0, '', ''),
(0, '', ''),
(0, '12366401_1225876620760134_4743018037244715110_n.jpg', ''),
(0, 'charles.png', ''),
(0, '', ''),
(0, 'lindacalabera.png', ''),
(0, 'lindacalabera.png', ''),
(0, 'lindacalabera.png', ''),
(0, 'lindacalabera.png', ''),
(0, '', ''),
(0, '', ''),
(0, '', ''),
(0, '', ''),
(0, '', ''),
(0, '', ''),
(0, '', ''),
(0, '', ''),
(0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `javascript`
--

CREATE TABLE `javascript` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(10000) NOT NULL,
  `Numero1` int(11) NOT NULL,
  `Numero2` int(11) NOT NULL,
  `Numero3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `javascript`
--

INSERT INTO `javascript` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`) VALUES
(1, 'etiquetajs', ' parafo1', 'parafo2 ', 0, 0, 0),
(2, 'string to number parseInt()', ' var text = \'42px\';\r\nvar integer = parseInt(text, 10);\r\n// returns 42', 'The parseInt() method converts a string into an integer (a whole number).\r\nIt accepts two arguments. The first argument is the string to convert. The second argument is called the radix.\r\nThis is the base number used in mathematical systems. For our use, it should always be 10.\r\nIt accepts two argument', 0, 0, 0),
(3, 'string to number parseFloat()', ' var text = \'3.14someRandomStuff\';\r\nvar pointNum = parseFloat(text);\r\n// returns 3.14\r\n', ' The parseFloat() method converts a string into a point number (a number with decimal points). You can even pass in strings with random text in them.', 0, 0, 0),
(6, 'event target', 'variableName.addEventListener(\"click\",function (event) {\r\n	if (event.target.tagName == \"LI\") {\r\n		alert(event.target.tagName);\r\n	};\r\n},true);\r\n ', ' ', 0, 0, 0),
(7, 'object', ' let productosObject = {\"product1\":{ \"precio\":5.5 ,\"nombre\":\"combo_pilsener\"}, \r\n\"product2\":{ \"precio\":5 ,\"nombre\":\"combo_corona\"},\r\n\"product3\":{ \"precio\":10 ,\"nombre\":\"sangria\"}', ' ', 0, 0, 0),
(8, 'foreach object keys ', ' \r\nObject.keys(nameOfObject).forEach( function(item) {\r\n	console.log(\"this is the  \" + item);\r\n	console.log(nameOfObject[item].propertyOfObject);\r\n\r\n});', ' ', 0, 0, 0),
(9, 'object leght', ' Object.keys(nameOfobject).length);', ' how many items does the object contain', 0, 0, 0),
(10, 'get part of the a string', 'var streetadress = show,13; \r\n\r\nvar streetaddress= addy.substr(0, addy.indexOf(\',\'));', ' extrae el texta que esta antes de el caracter especificado en el parametro del indexof', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mysql`
--

CREATE TABLE `mysql` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `Numero1` int(55) NOT NULL,
  `Numero2` int(55) NOT NULL,
  `Numero3` int(55) NOT NULL,
  `links` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mysql`
--

INSERT INTO `mysql` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`, `links`) VALUES
(1, 'create table', ' CREATE TABLE `Prueba` (\r\n  `ID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,\r\n  `String1` varchar(1000) NOT NULL,\r\n  `String2` varchar(1000) NOT NULL,\r\n  `String3` varchar(1000) NOT NULL,\r\n  `Numero1` int(55) NOT NULL,\r\n  `Numero2` int(55) NOT NULL,\r\n  `Numero3` int(55) NOT NULL\r\n);\r\n', ' ', 0, 0, 0, NULL),
(2, 'insert ', ' INSERT INTO `tableName` ( `String1`, `String2`,`String3`,`Numero1`,`Numero2`,`Numero3`) VALUES\r\n(\'string1\', string2\',\'string3\',1,2,3);', ' This insert 3 strings and 3 numbers into a table ', 0, 0, 0, NULL),
(3, 'add a column to a table', ' ALTER TABLE table-name\r\nADD column-name varchar(1000);', ' ', 0, 0, 0, NULL),
(4, 'sum columns ', '$sqlSumEgresos= \"SELECT (SUM(renta)+SUM(apartment)+SUM(tc12)+SUM(tc8)) AS Total FROM egresos\";\r\n$resultEgresos =mysqli_query($conn,$sqlSumEgresos);\r\n$rowEgresos = mysqli_fetch_assoc($resultEgresos); \r\n////\r\n< li> Resultado < span id=\"Resultado\">\' .$rowEgresos[\"Total\"]. \'< /span>< / li>', ' Shows the result of a sum of all columns of a table . This code need the if and while to fetch\r\nthe result in correct order ', 0, 0, 0, NULL),
(5, 'add primary key ', ' ALTER TABLE table-name\r\nADD CONSTRAINT PRIMARY KEY (ID);', ' add a primary key without auto increment  ', 0, 0, 0, NULL),
(6, 'change column name ', ' ALTER TABLE prueba CHANGE Numero4 Numero4 DECIMAL(6,2);', ' ', 0, 0, 0, NULL),
(7, 'select last limit ', ' SELECT Numero4 FROM prueba ORDER BY ID DESC LIMIT 1', '', 0, 0, 0, NULL),
(8, 'update', ' UPDATE tableName\r\nSET columnName = 666\r\nWHERE ID = 2;', ' ', 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `php`
--

CREATE TABLE `php` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(100) NOT NULL,
  `Numero1` int(11) NOT NULL,
  `Numero2` int(11) NOT NULL,
  `Numero3` int(11) NOT NULL,
  `links` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `php`
--

INSERT INTO `php` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`, `links`) VALUES
(8, 'create table', 'parafo  1', ' ', 0, 0, 0, NULL),
(9, 'connect ', '// Database connection settings \r\n $host = \'localhost\';\r\n $user = \'root\';\r\n $pass = \'\';\r\n $db = \'templates\';\r\n$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);', ' ', 0, 0, 0, NULL),
(11, 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet neque, soluta libero\r\n nesciunt quibusdam inventore id, quis, quasi, adipisci ad illo rem beatae \r\nperferendis deserunt accusamus molestias possimus alias molestiae!', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet neque7, soluta libero\r\n nesciunt qui', 0, 0, 0, NULL),
(12, 'get retrieve obtener', ' include \'conn.php\';\r\n$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);\r\n$sql= \"SELECT * FROM ingresos\";\r\n$result =mysqli_query($conn,$sql);\r\nif (mysqli_num_rows($result)>0) {\r\n	$output=\' \';\r\n	$output.=\' <here come tags> \';\r\n	while ($row = mysqli_fetch_assoc($result)) {\r\n		$output .= \'\r\n	<tagli> Sueldo <spanTag id=\"sueldo\">\' .$row[\"sueldo\"]. \'</spanTag></tagli>\r\n	 \';\r\n}\r\necho $output;\r\n}else{\r\n	echo \'Data not found\';\r\n}\r\n?>', ' ', 0, 0, 0, NULL),
(13, 'Convert JSON string to Array', '//Convert JSON string to Array  \r\n$someArray = json_decode($someJSON, true);\r\n  print_r($someArray);        // Dump all data of the Array\r\n  echo $someArray[0][\"name\"]; // Access Array data', ' PHP >= 5.2.0 features a function, json_decode, that decodes a JSON string into a PHP variable. By d', 0, 0, 0, 'https://jonsuh.com/blog/convert-loop-through-json-php-javascript-arrays-objects/'),
(14, 'add a column', 'ALTER TABLE egresos\r\nADD fecha varchar(55); ', ' ', 0, 0, 0, NULL),
(15, 'get a var ', ' $varAssingn = mysqli_real_escape_string($conn,$_POST[\'nameOftheInput\']);', ' ', 0, 0, 0, NULL),
(16, 'insert send ', ' if (isset($_POST[\'Departamento\'])) {\r\n\r\ninclude \'conn.php\';\r\n\r\n$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);\r\n$Piso = mysqli_real_escape_string($conn,$_POST[\'Piso\']);\r\n$Departamento =  mysqli_real_escape_string($conn,$_POST[\'Departamento\']);\r\n$Edificio =  mysqli_real_escape_string($conn,$_POST[\'Edificio\']);\r\n$Referencia =  mysqli_real_escape_string($conn,$_POST[\'Referencia\']);\r\n	\r\n$misqldata = \" INSERT INTO Hospital (Piso, Departamento, Edificio,Referencia) VALUES\r\n (\'$Piso\',\'$Departamento\',\'$Edificio\', \'$Referencia\' );\";  \r\n	mysqli_query($conn, $misqldata);\r\n	\r\n} else{\r\n	header(\"Location: ../index.php\");\r\n	exit();\r\n\r\n}', ' ', 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba`
--

CREATE TABLE `prueba` (
  `ID` int(11) NOT NULL,
  `String1` varchar(55) NOT NULL,
  `String2` varchar(55) NOT NULL,
  `String3` varchar(55) NOT NULL,
  `Numero1` int(11) NOT NULL,
  `Numero2` int(11) NOT NULL,
  `Numero3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `prueba`
--

INSERT INTO `prueba` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`) VALUES
(1, 'Nurie', 'Porras', 'Lopez', 10, 15, 22),
(2, 'Esfania', 'Perez', 'Reggae', 10, 15, 22),
(3, 'Roberto', 'Velasco', 'Metal', 10, 15, 22),
(4, 'Nurie', 'Lopez', 'Sorano', 10, 15, 22),
(5, 'Nurie', 'velasco', 'Lopez', 10, 15, 22),
(6, 'Nurie', 'death', 'Lopez', 10, 15, 22),
(7, 'Nurie', 'satan', 'Lopez', 10, 15, 22),
(8, 'Nurie', 'jesus', 'Lopez', 10, 15, 22),
(10, 'git commit ', 'Sirve para commit the changes made', '', 0, 0, 0),
(11, 'sdkfjsdkfj', '', '', 0, 0, 0),
(12, 'tania', 'hola mundo como estas ', '', 0, 0, 0),
(13, 'git checkout -- index.html', ' Is used to undo changes // use (--)  to make sure no c', '', 0, 0, 0),
(14, 'prueba', ' hola mai goa como estas yo esoty bien she is here I wi', '', 0, 0, 0),
(15, 'hol', 'ses un aprueba ', '', 0, 0, 0),
(16, 'pruba', 'a ver si funciona ', '', 0, 0, 0),
(17, 'black metal', 'Mayhem ', '', 0, 0, 0),
(18, 'paradigma', 'es una prueba \r\n ', '', 0, 0, 0),
(19, 'git checkout file.html ', ' Restore changes in the directory', '', 0, 0, 0),
(20, 'diff index.txt', 'to see what changes file file   ', '', 0, 0, 0),
(21, 'diff', ' ', '', 0, 0, 0),
(22, 'git diff', ' ', '', 0, 0, 0),
(23, 'git diff index.html', 'to see what changes file ', '', 0, 0, 0),
(24, 'nunca mas', 'es el sentimineto que me enbuelbe ', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sass`
--

CREATE TABLE `sass` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(100) NOT NULL,
  `Numero1` int(11) NOT NULL,
  `Numero2` int(11) NOT NULL,
  `Numero3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sass`
--

INSERT INTO `sass` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`) VALUES
(6, 'salir gulp', 'ctrl /c  ', ' Exit command line when using gulp ', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sql`
--

CREATE TABLE `sql` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(100) NOT NULL,
  `Numero1` int(11) NOT NULL,
  `Numero2` int(11) NOT NULL,
  `Numero3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bootstrap`
--
ALTER TABLE `bootstrap`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `css`
--
ALTER TABLE `css`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `git`
--
ALTER TABLE `git`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `javascript`
--
ALTER TABLE `javascript`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `mysql`
--
ALTER TABLE `mysql`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `php`
--
ALTER TABLE `php`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `prueba`
--
ALTER TABLE `prueba`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `sass`
--
ALTER TABLE `sass`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `sql`
--
ALTER TABLE `sql`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bootstrap`
--
ALTER TABLE `bootstrap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `command`
--
ALTER TABLE `command`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `css`
--
ALTER TABLE `css`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `git`
--
ALTER TABLE `git`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `javascript`
--
ALTER TABLE `javascript`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `mysql`
--
ALTER TABLE `mysql`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `php`
--
ALTER TABLE `php`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `prueba`
--
ALTER TABLE `prueba`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `sass`
--
ALTER TABLE `sass`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sql`
--
ALTER TABLE `sql`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
