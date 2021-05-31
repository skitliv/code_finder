-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2021 a las 17:43:34
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api`
--

CREATE TABLE `api` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `Numero1` int(55) NOT NULL,
  `Numero2` int(55) NOT NULL,
  `Numero3` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `api`
--

INSERT INTO `api` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`) VALUES
(1, 'request xmlhttp', 'var request = new XMLHttpRequest();\r\n\r\nrequest.open(\'GET\', \"https://hplussport.com/api/products.php?qty=5&order=name\"); /// parameters as shown in the documentation\r\n\r\nrequest.onload = function() {\r\n	var response = request.response; // get the data with the response parameter\r\n	var parsedData = JSON.parse(response); // change from a string to a object\r\n	console.log(parsedData);\r\n}\r\n\r\nrequest.send();  /// do that always  ', ' request data from a API using the XMLHttpRequest(); method', 0, 0, 0),
(2, 'fetch ', 'fetch(\'https://hplussport.com/api/products\')\r\n.then(\r\n	function(response) {\r\n		return response.json();\r\n	}\r\n)\r\n.then(\r\n	function(respData) {\r\n		console.log(respData);\r\n	}\r\n) ', ' ', 0, 0, 0),
(3, 'loop ', ' var request = new XMLHttpRequest();\r\n\r\nrequest.open(\'GET\', \'https://hplussport.com/api/products?order=name\');\r\n\r\nrequest.onload = function() {\r\n	var response = request.response;\r\n	var parsedData = JSON.parse(response);\r\n	console.log(parsedData);\r\n		for(item in parsedData) {\r\n		//Display all the product names\r\n		var name = parsedData[0].name;\r\n		var products = document.createElement(\'li\');\r\n		products.innerHTML = name;\r\n		document.body.appendChild(products);\r\n\r\n		//Display all the product images\r\n		var imageUrl = parsedData[item].image;\r\n		var images = document.createElement(\'img\');\r\n		images.setAttribute(\'src\', imageUrl);\r\n		document.body.appendChild(images);\r\n	}\r\n\r\n};\r\n\r\nrequest.send();', ' loop trough the data with the parameters ', 0, 0, 0);

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
  `Numero3` int(55) NOT NULL,
  `string4` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bootstrap`
--

INSERT INTO `bootstrap` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`, `string4`) VALUES
(1, 'Es una prueba', 'Es una prueba 1', 'Es una prueba 2 ', 0, 0, 0, NULL),
(2, 'index', ' <!DOCTYPE html>\n<html lang=\"en\">\n<head>\n	<meta charset=\"UTF-8\">\n	<title>DcodeManiac</title>\n	<meta name=\"author\" content = \'Roberto Araque\'>\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1,shrink-to-fit=no\"> \n	<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css\">\n	<link rel=\"stylesheet\" href=\"assets/css/style.css\">\n\n</head> \n<body>\n	<div class=\"container\">\n		<!-- Login form start -->\n		</div> <!-- row -->\n	</div> <!-- container -->\n	<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n	<script src=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js\"></script>\n	<script src=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/js/all.min.js\"></script>\n</body>		 ', ' ', 0, 0, 0, ' ');

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
  `Numero3` int(55) NOT NULL,
  `string4` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `command`
--

INSERT INTO `command` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`, `string4`) VALUES
(1, 'try', ' es solo una pruba nose si sirva', ' es solo una prueba', 0, 0, 0, NULL),
(2, 'open folder', 'start .  ', ' ', 0, 0, 0, NULL),
(3, 'remove a file ', ' rm filename.txt', ' ', 0, 0, 0, ' '),
(4, 'return to c:\\', ' cd \\', ' ', 0, 0, 0, ' '),
(5, 'change disk', 'd: ', 'place the letter of the disk follow by dos puntos ', 0, 0, 0, ' https://www.minitool.com/news/how-to-change-directory-in-cmd.html'),
(6, 'create make a directory', 'md \"nameoftheDirectory\" ', ' ', 0, 0, 0, ' https://www.computerhope.com/issues/ch000742.htm#:~:text=To%20create%20a%20directory%20in,hope%22%20in%20the%20current%20directory.&text=You%20can%20also%20create%20multiple,by%20using%20the%20md%20command.'),
(7, 'create a file ', ' echo some-text  > filename.txt', ' ', 0, 0, 0, ' echo some-text  > filename.txt'),
(8, 'ftp connection remote', ' ftp domain_name\nusername\npassword   / / will not be visible  \nlcd C:\\Users\\Gnose\\OneDrive\\Escritorio\\breve   \n', ' ', 0, 0, 0, ' https://kb.globalscape.com/Knowledgebase/10224/Establishing-an-FTP-Connection-from-the-Command-Prompt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `css`
--

CREATE TABLE `css` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `string4` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `css`
--

INSERT INTO `css` (`ID`, `String1`, `String2`, `String3`, `string4`) VALUES
(1, 'flex center', '    #navIconStyle ul{\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n    }\r\n    #navIconStyle ul li a{\r\n        background-color: pink;\r\n        border-radius: 10px;\r\n        padding: 5px;\r\n        margin: 0px 2px;\r\n    }', ' display flex with justify and alingment at the center', NULL),
(2, 'nav basic', '   #navIconStyle ul{\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n    }\r\n    #navIconStyle ul li a{\r\n        background-color: #9CE7FF;\r\n        border-radius: 10px;\r\n        padding: 5px;\r\n        margin: 0px 2px;\r\n    }\r\n    #navIconStyle ul li a:hover{\r\n        background-color: #0F61CC;\r\n        color: #9CE7FF;\r\n        text-decoration: none;\r\n    };', ' basic nav to work on', NULL),
(3, 'import', '@import \"fileName.css\";\r\n ', ' ', ' '),
(4, 'query devices @media ', ' /* \r\n  ##Device = Desktops\r\n  ##Screen = 1281px to higher resolution desktops\r\n*/\r\n\r\n@media (min-width: 1281px) {\r\n  \r\n  //CSS\r\n  \r\n}\r\n\r\n/* \r\n  ##Device = Laptops, Desktops\r\n  ##Screen = B/w 1025px to 1280px\r\n*/\r\n\r\n@media (min-width: 1025px) and (max-width: 1280px) {\r\n  \r\n  //CSS\r\n  \r\n}\r\n\r\n/* \r\n  ##Device = Tablets, Ipads (portrait)\r\n  ##Screen = B/w 768px to 1024px\r\n*/\r\n\r\n@media (min-width: 768px) and (max-width: 1024px) {\r\n  \r\n  //CSS\r\n  \r\n}\r\n\r\n/* \r\n  ##Device = Tablets, Ipads (landscape)\r\n  ##Screen = B/w 768px to 1024px\r\n*/\r\n\r\n@media (min-width: 768px) and (max-width: 1024px) and (orientation: landscape) {\r\n  \r\n  //CSS\r\n  \r\n}\r\n\r\n/* \r\n  ##Device = Low Resolution Tablets, Mobiles (Landscape)\r\n  ##Screen = B/w 481px to 767px\r\n*/\r\n\r\n@media (min-width: 481px) and (max-width: 767px) {\r\n  \r\n  //CSS\r\n  \r\n}\r\n\r\n/* \r\n  ##Device = Most of the Smartphones Mobiles (Portrait)\r\n  ##Screen = B/w 320px to 479px\r\n*/\r\n\r\n@media (min-width: 320px) and (max-width: 480px) {\r\n  \r\n  //CSS\r\n  \r\n}', ' ', ' '),
(5, 'negacion not except', ' .next_container  :not(.form-check) {\r\n	text-align: center;\r\n  }', ' ', ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d3js`
--

CREATE TABLE `d3js` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(5000) DEFAULT NULL,
  `String3` varchar(1000) NOT NULL,
  `string4` varchar(1000) NOT NULL,
  `Numero1` int(55) NOT NULL,
  `Numero2` int(55) NOT NULL,
  `Numero3` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `d3js`
--

INSERT INTO `d3js` (`ID`, `String1`, `String2`, `String3`, `string4`, `Numero1`, `Numero2`, `Numero3`) VALUES
(2, 'start corebones inicio', ' let dataArray = [ 7,8,10,8];\nlet svg =  d3.select(\"body\").append(\'svg\')\n.attr(\'width\',\'100%\')\n.attr(\'height\',\'100%\')\n.style(\'border\',\'3px solid red\');	\n\nsvg.selectAll(\'rect\') // select before exist \n.data(dataArray) // give the data \n.enter().append(\"rect\");  // make it exist ', ' ', ' ', 0, 0, 0),
(3, 'circle', 'var dataArray = [5,11,18];\r\n\r\nvar svg = d3.select(\"body\").append(\"svg\").attr(\"height\",\"100%\").attr(\"width\",\"100%\");\r\n\r\n// svg.selectAll(\"rect\")\r\n//       .data(dataArray)\r\n//       .enter().append(\"rect\")\r\n//                 .attr(\"height\",function(d,i){ return d*15; })\r\n//                 .attr(\"width\",\"50\")\r\n//                 .attr(\"fill\",\"pink\")\r\n//                 .attr(\"x\",function(d,i){ return 60*i; })\r\n//                 .attr(\"y\",function(d,i){ return 300-(d*15); });\r\n\r\nvar newX = 0;  /// the position from where to start the chart \r\nsvg.selectAll(\"circle\")\r\n      .data(dataArray)\r\n      .enter().append(\"circle\")\r\n                .attr(\"cx\",function(d,i){ newX+=(d*3)+(i*20); return newX; })\r\n                .attr(\"cy\",\"100\")\r\n                .attr(\"r\",function(d){ return d*2.5; });\r\n\r\n// \r\n\r\n ', ' ', ' ', 0, 0, 0),
(4, 'line d3', ' \r\nvar newX = 900; /// the begining of the line\r\nsvg.selectAll(\"line\")\r\n      .data(dataArray)\r\n      .enter().append(\"line\")\r\n                .attr(\"x1\",newX) /// start\r\n                .attr(\"stroke-width\",\"2\")\r\n                .attr(\"y1\",function(d,i){ return 50+(i*20); }) // y of the start line\r\n                .attr(\"x2\",function(d){ return newX+(d*10); }) // x end \r\n                .attr(\"y2\",function(d,i){ return 50+(i*20); }); // y end ', ' requieres css styling', ' ', 0, 0, 0),
(5, 'margin', '    let  margin = {top: 100, right: 20, bottom: 50, left: 70},\r\n    width = 960 - margin.left - margin.right,\r\n    height = 500 - margin.top - margin.bottom;', ' ', ' ', 0, 0, 0),
(6, 'link', '<script src=\"https://d3js.org/d3.v5.min.js\"></script>\r\n ', ' ', ' ', 0, 0, 0),
(7, 'date', ' var formatTime = d3.timeFormat(\"%B %d, %Y\");', ' ', ' https://github.com/d3/d3-time-format/blob/master/README.md#locale_format', 0, 0, 0),
(8, 'd3 create table basic', ' let mydata = [\n         {date:\'4/01/2017\' , low: 55 , hight: 68},\n         {date:\'4/02/2017\' , low: 65 , hight: 90},\n         {date:\'4/03/2017\' , low: 95 , hight: 100},\n         {date:\'4/04/2017\' , low: 11 , hight: 77},\n         {date:\'4/04/2017\' , low :21 , hight: 68},\n         {date:\'4/06/2017\' , low :15 , hight: 68},\n   ];\n\n d3.select(\'tbody\') \n .selectAll(\'tr\') //select elemetn before exitst\n .data(mydata) // give the data\n .enter().append(\'tr\') // make selection exist\n .html( (d)=>{\n  return \"<th scope = \'row\'>\" + d.date + \"</th>\"\n            + \"<td>\" + d.low + \"</td>\"\n            + \"<td>\" + d.hight + \"</td>\"\n }) \n ////////// a table needs to be created in the html file', ' ', ' ', 0, 0, 0),
(9, 'svg  elements attributes', '   <svg width=\"600\" height=\"400\" \r\n          style=\"background: #93A1A1\">\r\n\r\n          <line x1=\"0\" y1=\"200\" x2=\"600\" y2=\"300\"\r\n            style=\"stroke: #268BD2; stroke-width: 40px\" />\r\n\r\n          <rect \r\n            x=\"200\" y=\"100\"\r\n            width=\"200\" height=\"200\"\r\n            style=\"fill: #CB4B19;\"\r\n            />\r\n          \r\n          <circle \r\n            cx=\"300\" cy=\"200\" r=\"50\"\r\n            style=\"fill: #840043\"\r\n          />\r\n\r\n          <text \r\n            x=\"10\" y=\"390\"\r\n            font-family=\"sans-serif\"\r\n            font-size=\"25\"\r\n            fill=\"white\">Hello SVG</text>\r\n\r\n          <g id=\"triangle\">\r\n            <polyline \r\n              points=\"10 35, 30 10, 50 35\"\r\n              style=\"fill: #F7B330\"\r\n            />\r\n          </g>\r\n\r\n          <use xlink:href=\"#triangle\" x=\"30\" y=\"0\" />\r\n\r\n        </svg>', ' ', ' https://developer.mozilla.org/es/docs/Web/SVG', 0, 0, 0),
(10, 'basic rect ', ' let dataArray = [10,15,45,11,54,25,45,25,55];\nlet height =  200,\n	width = 300,		\n	barWidth = 40,\n	barOffset = 3 ;	 \n\nd3.select(\'#viz\').append(\'svg\')\n	.attr(\"width\",width)\n	.attr(\"height\",height)			\n	.style(\'background\', \'pink\')	\n\n.selectAll(\'rect\')\n.data(dataArray)\n.enter().append(\'rect\')\n.style(\'fill\',\'#222\')\n	.attr(\"width\",barWidth)\n	.attr(\"height\",(d)=>{\n			return d  \n	})\n	.attr(\"x\",(d,i)=>{\n		return i * (barWidth + barOffset) \n	})	\n	.attr(\"y\",(d,i)=>{\n		return height  - d \n	})	', ' ', ' ', 0, 0, 0),
(11, 'y scale ', ' let yScale = d3.scaleLinear()\r\n			   .domain([0,d3.max(dataArray)]) /// minimun and maximun of the data use []\r\n			   .range([0, height]); // minimun and maximun of the result use []			   	\r\n///<<<<<<<<difine yScale>>>>\r\n\r\n///<<<<<<<<<<inside the bar or rects>>>>>>\r\n.attr(\"y\",(d)=>{\r\n		return height  - yScale(d) ;\r\n	})	/// the y attribute\r\n//////<<<<the height>>>>>>>>\r\n.attr(\"height\",(d,i)=>{\r\n			return yScale(d) ; \r\n	})', ' ', ' ', 0, 0, 0),
(12, 'x scale  d3.scaleBand', ' ///<<<<<< define xScale >>>>>>>>>>>>>>????????\r\nlet xScale = d3.scaleBand()\r\n			.domain(dataArray)\r\n			.range([0,width])\r\n			.paddingInner(0.1)\r\n			.paddingOuter(0.3)\r\n///<<<<<< define xScale >>>>>>>>>>>>>>????????\r\n//// <<<<scale the width >>>>>>>\r\n	.attr(\"width\",(d)=>{return xScale.bandwidth();})\r\n///<<<< scale the x attribute\r\n.attr(\"x\",(d)=>{	return xScale(d); })', ' ', ' ', 0, 0, 0),
(13, 'timeScaler', '    let parseTime = d3.timeParse(\"%m:%e\");\r\n\r\n    let scaleTime = d3.scaleTime()\r\n				  .domain(d3.extent(rows , function(d){return parseTime(d.fecha); }))\r\n				  .range([0,width]);\r\n		console.log(parseTime(\"10:19\"));	\r\n    let xtimeGuide = d3.axisBottom(scaleTime);	\r\n\r\n        .attr(\'transform\', `translate(40,${height +30 })`)\r\n ', ' ', ' ', 0, 0, 0),
(14, 'transfor adjust text guidex guidey', ' .selectAll(\" text\") \r\n.style(\" text-anchor\", \"end\")\r\n .attr(\" dx\", \"-. 8em\") .attr(\" dy\", \". 15em\") \r\n.attr(\" transform\", \"rotate(-65)\");\r\n\r\n', ' ', ' ', 0, 0, 0),
(15, 'time format constructor ', '\r\n.tickFormat( d3. timeFormat(\"% Y-% m-% d\")))\r\n\r\n\r\n%a - abbreviated weekday name.\r\n%A - full weekday name.\r\n%b - abbreviated month name.\r\n%B - full month name.\r\n%c - date and time, as \"%a %b %e %H:%M:%S %Y\".\r\n%d - zero-padded day of the month as a decimal number [01,31].\r\n%e - space-padded day of the month as a decimal number [ 1,31]; equivalent to %_d.\r\n%H - hour (24-hour clock) as a decimal number [00,23].\r\n%I - hour (12-hour clock) as a decimal number [01,12].\r\n%j - day of the year as a decimal number [001,366].\r\n%m - month as a decimal number [01,12].\r\n%M - minute as a decimal number [00,59].\r\n%L - milliseconds as a decimal number [000, 999].\r\n%p - either AM or PM.\r\n%S - second as a decimal number [00,61].\r\n%U - week number of the year (Sunday as the first day of the week) as a decimal number [00,53].\r\n%w - weekday as a decimal number [0(Sunday),6].\r\n%W - week number of the year (Monday as the first day of the week) as a decimal number [00,53].\r\n%x - date, as \"%m/%d/%Y\".\r\n%X - tim', ' ', ' https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md', 0, 0, 0),
(16, 'time format constructor ', '\r\n.tickFormat( d3. timeFormat(\"% Y-% m-% d\")))\r\n\r\n\r\n%a - abbreviated weekday name.\r\n%A - full weekday name.\r\n%b - abbreviated month name.\r\n%B - full month name.\r\n%c - date and time, as \"%a %b %e %H:%M:%S %Y\".\r\n%d - zero-padded day of the month as a decimal number [01,31].\r\n%e - space-padded day of the month as a decimal number [ 1,31]; equivalent to %_d.\r\n%H - hour (24-hour clock) as a decimal number [00,23].\r\n%I - hour (12-hour clock) as a decimal number [01,12].\r\n%j - day of the year as a decimal number [001,366].\r\n%m - month as a decimal number [01,12].\r\n%M - minute as a decimal number [00,59].\r\n%L - milliseconds as a decimal number [000, 999].\r\n%p - either AM or PM.\r\n%S - second as a decimal number [00,61].\r\n%U - week number of the year (Sunday as the first day of the week) as a decimal number [00,53].\r\n%w - weekday as a decimal number [0(Sunday),6].\r\n%W - week number of the year (Monday as the first day of the week) as a decimal number [00,53].\r\n%x - date, as \"%m/%d/%Y\".\r\n%X - tim', ' ', ' https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md', 0, 0, 0),
(17, 'basic pie chart ', 'console.log(\'I am pichart\');\n\nfunction piChartFunk () {\nlet colorsScale = d3.scaleOrdinal(d3.schemeDark2);\nlet margin  = {top : 60, right:30, bottom: 60, left:30},\n	    height =  450 - margin.top - margin.bottom ,\n		width = 700 - margin.left - margin.right ;	\n\nlet details = [\n              {grade:\"A+\", number :8},\n              {grade:\"A\", number :21},\n              {grade:\"B\", number :15},\n              {grade:\"C\", number :28},\n              {grade:\"D\", number :30},\n              {grade:\"F\", number :6}\n               ];\n\nlet svg = d3.select(\'#viz\').append(\'svg\')\n		.attr(\"width\",width + margin.left + margin.right)\n	    .attr(\"height\",height + margin.top + margin.bottom)	\n	    \nlet data = d3.pie().sort(null).value((d)=>{return d.number})(details); /// pie data generator \n\nlet segments = d3.arc()\n			   .innerRadius(0)\n			   .outerRadius(150)\n			   .padAngle(0.1)\n			   .padRadius(50);\n\nlet  sections = svg.append(\'g\')\n	            .attr(\"transform\",\"translate(\"+ 250 + \", \" + 210 + \")\")\n	            .selectAll(\'path\')\n	            .data(data)\n	            .enter().append(\"path\")\n	            .attr(\"d\",segments).attr(\"fill\", (d)=>{ return colorsScale(d.data.number);})\n	            .on(\'mouseenter\', function (actual, i) {\n	            	d3.select(this).attr(\"transform\",\"scale(1.2)\");\n	            })\n	            .on(\'mouseleave\', function (actual, i) {\n	            	d3.select(this).attr(\"transform\",\"scale(1)\");\n	            })\n\nlet content = d3.select(\'g\').selectAll(\'text\').data(data);\n			  content.enter().append(\'text\').each(function (d){ \n			  let center = segments.centroid(d);\n			  d3.select(this).attr(\"x\",center[0])\n			                 .attr(\"y\",center[1])\n			                 .text(d.data.number)\n			  });\n\nlet legends = svg.append(\'g\')\n			  .selectAll(\'rect\')\n			  	      .data(data)\n			  	      .enter().append(\'rect\')\n			  	      .attr(\"width\", 20)\n			  	      .attr(\"x\",(width - 50))  \n			  	      .attr(\"height\",20)\n			  	      .attr(\"y\",(d,i)=>{return i * 30;})	\n			  	      .attr(\"fill\", (d)=>{ return colorsScale(d.data.number)})\n			  	 	.attr(\"transform\",\"translate(20 , 40)\")     \n			\n let textLegends = svg.append(\'g\')\n 				  .selectAll(\'text\')\n                  .data(data)\n                  .enter().append(\'text\')\n                  .text(function(d,i){return d.data.grade;})  \n                  .attr(\"x\", function(d,i){ return (width - 30 ) ;})   \n                  .attr(\"y\",function(d,i){ return  i * 30 ; })\n			  	  .attr(\"stroke\", (d)=>{ return colorsScale(d.data.number)})\n			  	  .attr(\"transform\",\"translate(30 , 55)\")     \n 						 \n 							\n\n\n\n}// end of pieChartFunk\npiChartFunk();', ' ', ' ', 0, 0, 0),
(18, 'porcentage d3 axis', ' .tickFormat(d => d + \"%\");', ' ', ' https://stackoverflow.com/questions/18474620/d3-js-tickformat-adding-a-sign-without-multiplying-by-100', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `git`
--

CREATE TABLE `git` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(100) NOT NULL,
  `string4` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `git`
--

INSERT INTO `git` (`ID`, `String1`, `String2`, `String3`, `string4`) VALUES
(2, 'git commit ammend recent last ', ' git commit --amend -m \"an updated commit message\"', ' The git commit --amend command is a convenient way to modify the most recent commit.', NULL),
(3, 'unstage reset', ' $ git reset -- filename.txt', ' unstage a specific file ', NULL),
(4, 'undo changes in a single file ', ' git checkout  filename.txt', 'Undo any change made in a file  ', NULL),
(6, 'start  git repository init ', ' git init ', ' The git init command creates a new Git repository. It can be used to convert an existing, unversion', ' https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-init'),
(7, 'config email user.name use.email ', ' git config --global user.name \'username\'\r\ngit config --global user.email email\'', ' ', ' https://help.github.com/es/github/using-git/setting-your-username-in-git'),
(8, 'añadir add to the stage area', ' git add filename', ' ', ' '),
(9, 'remove form stage area', ' git rm --catched filename', ' git rm [-f | --force] [-n] [-r] [--cached] [--ignore-unmatch]\r\n	  [--quiet] [--pathspec-from-file=<', ' https://git-scm.com/docs/git-rm'),
(10, 'git add', 'git add filename // add the file name mentioned\r\ngit add * .html    // add any file with that extention \r\ngit add .  /// add all the files in the directory', ' ', ' https://www.w3docs.com/learn-git/git-add.html'),
(11, 'git commit', 'git commit -a    /// Commits a snapshot of all changes in the working directory. Only modifications to tracked files are included.\n git commit -m \"commit message\" //  Creates a commit with a passed commit message. By default, git commit opens the locally configured text editor causing a commit message to be entered.\ngit commit -am \"commit message\" ///  Combines the -a and -m options for creating a commit for all the staged changes and taking an inline commit message.\ngit commit --amend --no-edit  /// not changed the message\ngit commit --amend ///   Modifies the last commit. Staged changes are added to the previous commit. This command opens the system\'s configured text editor and changes the previously specified commit message. \n ', ' ', ' https://www.w3docs.com/learn-git/git-commit.html'),
(12, 'git ignore ', 'touch  .gitignore /// create the file first\r\n in that file put the files that you want to be ignored \r\n/forlderName  /// to ignore a entire folder \r\n* .txt /// ignore all the files with that extention ', ' ', ' https://git-scm.com/docs/gitignore'),
(13, 'git branch ', ' git branch  nameOftheBranch   /// create a branch \r\ngit checkout nameOfTheBranch   // to change the branch usually from the master  \r\ndo not forge to add and commit the changes that have been made \r\n', ' ', ' https://git-scm.com/docs/git-branch'),
(14, 'git push ', ' git remote \r\ngit remote add origin https://github.com/skitliv/indexphp\r\ngit push -u origin master    /// push the data into git hub cloud put the name of the branch if is neccesary\r\n', ' ', ' https://git-scm.com/docs/git-remote'),
(15, 'git clone download ', ' git clone  https://github.com/skitliv/indexphp.git \r\n', ' ', ' https://git-scm.com/docs/git-clone'),
(16, 'git clone download ', ' git clone  https://github.com/skitliv/indexphp.git \r\n', ' ', ' https://git-scm.com/docs/git-clone'),
(17, 'git clone download ', ' git clone  https://github.com/skitliv/indexphp.git \r\n', ' ', ' https://git-scm.com/docs/git-clone'),
(18, 'get out', 'scp >>> :wq  ', ' ', ' '),
(19, 'show branchs', ' 1- git branch -a  ', ' 1- show all branchest ', ' '),
(20, 'change branch name', ' git branch -m <new_name> /// current branch name ', ' ', ' https://linuxize.com/post/how-to-rename-local-and-remote-git-branch/'),
(21, 'git reset changes since last commit ', ' git reset HEAD --hard\r\ngit clean -fd // becarefull', ' ', ' '),
(22, 'create a file with text', 'echo some-text  someText > filename.txt ', ' ', ' https://www.windows-commandline.com/create-file-from-command-line/'),
(23, 'update git ignore not working', ' git rm -rf --cached .\r\ngit add .', ' ', ' https://stackoverflow.com/questions/25436312/gitignore-not-working'),
(24, 'create branch ', ' //Create a New Branch\r\ngit checkout -b [name_of_your_new_branch]', ' ', ' ');

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
  `String2` varchar(5000) DEFAULT NULL,
  `String3` varchar(10000) NOT NULL,
  `string4` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `javascript`
--

INSERT INTO `javascript` (`ID`, `String1`, `String2`, `String3`, `string4`) VALUES
(2, 'string to number parseInt()', ' var text = \'42px\';\r\nvar integer = parseInt(text, 10);\r\n// returns 42', 'The parseInt() method converts a string into an integer (a whole number).\r\nIt accepts two arguments. The first argument is the string to convert. The second argument is called the radix.\r\nThis is the base number used in mathematical systems. For our use, it should always be 10.\r\nIt accepts two argument', NULL),
(3, 'string to number parseFloat()', ' var text = \'3.14someRandomStuff\';\r\nvar pointNum = parseFloat(text);\r\n// returns 3.14\r\n', ' The parseFloat() method converts a string into a point number (a number with decimal points). You can even pass in strings with random text in them.', NULL),
(6, 'event target', 'variableName.addEventListener(\"click\",function (event) {\r\n	if (event.target.tagName == \"LI\") {\r\n		alert(event.target.tagName);\r\n	};\r\n},true);\r\n ', ' ', NULL),
(7, 'object', ' let productosObject = {\"product1\":{ \"precio\":5.5 ,\"nombre\":\"combo_pilsener\"}, \r\n\"product2\":{ \"precio\":5 ,\"nombre\":\"combo_corona\"},\r\n\"product3\":{ \"precio\":10 ,\"nombre\":\"sangria\"}', ' ', NULL),
(8, 'foreach object keys ', ' \r\nObject.keys(nameOfObject).forEach( function(item) {\r\n	console.log(\"this is the  \" + item);\r\n	console.log(nameOfObject[item].propertyOfObject);\r\n\r\n});', ' ', NULL),
(9, 'object leght', ' Object.keys(nameOfobject).length);', ' how many items does the object contain', NULL),
(10, 'get part of the a string', 'var streetadress = show,13; \r\n\r\nvar streetaddress= addy.substr(0, addy.indexOf(\',\'));', ' extrae el texta que esta antes de el caracter especificado en el parametro del indexof', NULL),
(11, 'get size window innerHeight innerWidth', 'console.log(\'soy size y funcino bien \');\r\nlet alto = window.innerHeight;\r\nlet ancho = window.innerWidth;\r\ndocument.getElementById(\'container\').style.height = alto + \"px\" ;\r\ndocument.getElementById(\'container\').style.width = ancho + \"px\" ;\r\n ', ' the file size', NULL),
(12, 'get a key object by its value', 'let result = $.grep(object,function(e){return e.key==\"Club\"});\r\nconsole.log(result);\r\n ', ' ', NULL),
(13, 'convert a object into a string ', ' let object= JSON.stringify(object); /// convert a object into a string ', ' ', NULL),
(14, '', 'var fecha = d.getDate();\r\nvar dia = d.getDay();\r\nvar anio = d.getFullYear();\r\nvar hora = d.getHours();\r\nvar minutos = d.getMinutes();', ' ', NULL),
(15, 'get device information', '(function () {\r\n    \'use strict\';\r\n    \r\n    var module = {\r\n        options: [],\r\n        header: [navigator.platform, navigator.userAgent, navigator.appVersion, navigator.vendor, window.opera],\r\n        dataos: [\r\n            { name: \'Windows Phone\', value: \'Windows Phone\', version: \'OS\' },\r\n            { name: \'Windows\', value: \'Win\', version: \'NT\' },\r\n            { name: \'iPhone\', value: \'iPhone\', version: \'OS\' },\r\n            { name: \'iPad\', value: \'iPad\', version: \'OS\' },\r\n            { name: \'Kindle\', value: \'Silk\', version: \'Silk\' },\r\n            { name: \'Android\', value: \'Android\', version: \'Android\' },\r\n            { name: \'PlayBook\', value: \'PlayBook\', version: \'OS\' },\r\n            { name: \'BlackBerry\', value: \'BlackBerry\', version: \'/\' },\r\n            { name: \'Macintosh\', value: \'Mac\', version: \'OS X\' },\r\n            { name: \'Linux\', value: \'Linux\', version: \'rv\' },\r\n            { name: \'Palm\', value: \'Palm\', version: \'PalmOS\' }\r\n        ],\r\n        databrowser: [\r\n        ', ' ', NULL),
(16, 'serialize a form php mysql', ' $.ajax({  \r\n                     url:\"php/insert.php\",  \r\n                     method:\"POST\",  \r\n                     data:$(\'#form3, #form2\').serialize() ,   \r\n                     success:function(data){  \r\n                          $(\'#form3\').trigger(\"reset\");                            \r\n                     }  \r\n                });\r\n     	////////// otro metodo\r\njQuery.ajax({\r\n    url: \'/some/endpoint.php\',\r\n    method: \'GET\',\r\n    data: $(\'#the-form\').serialize()\r\n}).done(function (response) {\r\n    // Do something with the response\r\n}).fail(function () {\r\n    // Whoops; show an error.\r\n}); ', ' ', ' https://www.mattlunn.me.uk/blog/2012/10/submitting-a-form-as-an-ajax-request-using-jquery/'),
(18, 'random number', 'Math.floor(Math.random() * 10); \r\n', ' ', ' https://www.w3schools.com/js/js_random.asp '),
(19, 'find various value object  varios', 'let paises = [];\r\nlet southAmerica = [];\r\nlet t = 0;\r\nlet paisesArray = [\"Argentina\",\"Ecuador\",\"Peru\",\"Chile\",\"Mexico\", \"united states\"];\r\n\r\nfor (var i = 1; i <= resultado.features.length - 1; i++) {\r\n  	for (var s = 0; s <= paisesArray.length; s++) {\r\n  		if (resultado.features[i].attributes.Combined_Key == paisesArray[s]) {\r\n        southAmerica[t] =  resultado.features[i].attributes;\r\n        t++;\r\n  		}\r\n  	} /// end of for \r\n} // end of for  resultado.features.length\r\n ', ' busca un valor deacuerdo con los elementos de el paisesArray', ' '),
(20, 'change date format to mysql ', ' let date = \'31/01/1987\';\nlet newDate =   date.split(\"/\");\nlet newDateFormat = newDate[2] +\"-\"+ newDate[1]+\"-\" + newDate[0];\nconsole.log(newDateFormat); \nparseTime = d3.timeParse(\"% Y-% m-% d %H:% M:% S\"); /// send it to d3.js\n', ' ', ' '),
(21, 'sort objects ', '  sur = southAmerica.sort((a,b)=>{\r\nreturn (a.value< b.value) ? 1 : -1 \r\n});\r\n', ' ', ' '),
(22, 'constructor object', 'let phone = function (name,precio,cantidad,colorf,colorb){\r\nthis.name = name,\r\nthis.precio = precio,\r\nthis.cantidad = cantidad,\r\nthis.color = {\r\n	front : colorf,\r\n	back : colorb\r\n         }, \r\n     makeCall = function(){\r\n     	console.log(\'funciono\');\r\n     }\r\n};\r\n	 \r\nvar x = new phone (samsung,300,1,\'white\',\'black\');', ' ', ' '),
(23, 'find object value', ' let result = $.grep(rows,function(e){return e.nombre==\"Club\"});\r\n console.log(result);', ' find the key of a array nested with objects by its value ', ' '),
(24, 'jquery link', '<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script> ', ' something', ' https://www.w3schools.com/jquery/jquery_get_started.asp'),
(25, 'add remove update data ', ' let coutryData = {\r\n\r\n	items: [ \'China\', \'USA\', \'India\'],\r\n	addItem(item){\r\n		this.items.push(item)\r\n	},\r\n	removeItem(index,item){\r\n		this.items.splice(index,1); /// remove just one item \r\n	},\r\n	updateItem(index, newItem){\r\n		this.items[index] = newItem;\r\n	} \r\n};\r\n\r\n  d3.select(\'ul\')\r\n  .selectAll(\'li\')\r\n  .data(coutryData.items , data => data) // so d3 can check the data itself and not the index\r\n  .enter()\r\n  .append(\'li\')\r\n  .text(data => data); /// d3 does not rerender all data but just what has changed \r\n\r\n\r\n  setTimeout( ()=>{\r\n  	coutryData.addItem(\'Ecuador\')\r\n  	d3.select(\'ul\')\r\n  .selectAll(\'li\')\r\n  .data(coutryData.items , data => data)\r\n  .enter()\r\n  .append(\'li\')\r\n  .classed(\'added\',true)\r\n  .text(data => data);\r\n\r\n\r\n  }, 2000)\r\n\r\n  setTimeout( ()=>{\r\n  	coutryData.removeItem(2);\r\n  	d3.select(\'ul\')\r\n  .selectAll(\'li\')\r\n  .data(coutryData.items, data => data)\r\n  .exit()\r\n  .remove()\r\n  .classed(\'redundant\',true)\r\n\r\n  }, 4000)\r\n\r\n\r\n setTimeout( ()=>{\r\n  	coutryData.updateItem(1, \'Russia\')\r\n  	d3.select(\'ul\')\r\n  .selectAll(\'li\')\r\n  .data(coutryData.items , data => data)\r\n  .exit()\r\n  .classed(\'updated\',true)\r\n  .text(\"Russia\");\r\n  }, 6000)\r\n\r\n', ' ', ' https://www.youtube.com/watch?v=ZOeWdkq-L90&t=930s'),
(26, 'delete object', ' var person = {\r\n  firstName:\"John\",\r\n  lastName:\"Doe\",\r\n  age:50,\r\n  eyeColor:\"blue\"\r\n};\r\n\r\ndelete person.age;  // or delete person[\"age\"];\r\n\r\n// Before deletion: person.age = 50, after deletion, person.age = undefined', ' ', ' https://www.w3schools.com/howto/howto_js_remove_property_object.asp'),
(27, 'max value of a object or array with diferents keys', ' let maximo = d3.max(d3.entries(data[0]).map((s) => s.value));\r\n console.log( maximo);', ' ', ' https://www.geeksforgeeks.org/d3-js-d3-entries-function/'),
(34, 'create class dinamicamente', '  let EcuadorDataPdp = [];\r\n\r\n ecuadorDataP = function (pobresa,desempleo,poblacion,anio,color){ /// THIS IS THE CLASS\r\nthis.pobresa = Number(pobresa),\r\nthis.desempleo = Number(desempleo),\r\nthis.poblacion = Number(poblacion),\r\nthis.anio = Number(anio),\r\nthis.color = {\r\n	front : colorf,\r\n	back : colorb\r\n         }, \r\n     makeCall = function(){\r\n     	console.log(\'funciono\');\r\n     }\r\n};\r\n\r\nfor (var i = 2007; i < 2020; i++) {\r\n let x = new ecuadorDataP (data1[0][`${i} [YR${i}]`],data1[1][`${i} [YR${i}]`],data1[2][`${i} [YR${i}]`],i)  \r\n EcuadorDataPdp.push(x); /// push data into the array of objects called EcuadorDataPdp \r\n\r\n} \r\n i got you ', ' ', ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguajes`
--

CREATE TABLE `lenguajes` (
  `Idlenguaje` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `imgLink` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lenguajes`
--

INSERT INTO `lenguajes` (`Idlenguaje`, `nombre`, `imgLink`) VALUES
(1, 'Javascript', ''),
(2, 'php', ''),
(3, 'css', ''),
(4, 'mysql', ''),
(5, 'command', ''),
(6, 'git', ''),
(7, 'D3js', ''),
(8, 'npm', ''),
(9, 'bootstrap', ''),
(10, 'math', ''),
(11, 'jquery', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `math`
--

CREATE TABLE `math` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `string4` varchar(1000) NOT NULL,
  `Numero1` int(11) NOT NULL,
  `Numero2` int(11) NOT NULL,
  `Numero3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `math`
--

INSERT INTO `math` (`ID`, `String1`, `String2`, `String3`, `string4`, `Numero1`, `Numero2`, `Numero3`) VALUES
(1, 'funciono', 'funcino ', 'funciono ', 'funciono ', 0, 0, 0),
(2, 'notacion Cientifica', '7.438 * 10 potencia 6 =  7,438.000 ', ' La notación científica nos permite escribir números muy grandes o muy pequeños de forma abreviada. Esta notación consiste simplemente en multiplicar por una potencia de base 10 con exponente positivo o negativo.', ' https://www.matesfacil.com/ESO/numeros/notacion_cientifica/teoria-ejemplos-numeros-decimales-exponente-positivo-negativo-base-10-test.html', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id_media` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idUserCodes` int(11) NOT NULL,
  `img_link` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id_media`, `idUser`, `idUserCodes`, `img_link`, `link`) VALUES
(1, 1, 1, 'imagen.jpg', 'img'),
(2, 1, 1, 'imagen1.jpg', 'img'),
(3, 0, 193, 'funciono!', ''),
(4, 0, 194, 'Hello world!', ''),
(5, 0, 195, 'Hello world!', ''),
(6, 0, 199, '0c972017a95b736f953ebe46daea63a8.jpg', ''),
(7, 0, 200, '534241_349974788403100_1727703091_n.jpg', ''),
(8, 0, 201, '10366291_690077994445367_7863171735903028111_n.jpg', ''),
(9, 0, 202, 'circlearea.PNG', ''),
(10, 0, 203, 'diametroCirculo.PNG', '');

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
  `links` varchar(1000) DEFAULT NULL,
  `string4` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mysql`
--

INSERT INTO `mysql` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`, `links`, `string4`) VALUES
(1, 'create table', 'DROP TABLE IF EXISTS Prueba;\n\nCREATE TABLE if not EXISTS Prueba (\n  `ID` int NOT NULL PRIMARY KEY AUTO_INCREMENT,\n  `String1` varchar(1000) NOT NULL,\n  `String2` varchar(1000) NOT NULL,\n  `String3` varchar(1000) NOT NULL,\n  `Numero1` int(55) NOT NULL,\n  `Numero2` int(55) NOT NULL,\n  `Numero3` int(55) NOT NULL\n) engine = InnoDB ;\n\n', ' ', 0, 0, 0, NULL, NULL),
(2, 'insert ', 'INSERT INTO tableName ( \'String1\', \'String2\',\'String3\',\'Numero1\',\'Numero2\',\'Numero3\') VALUES\n (\'string1\', \'string2\',\'string3\',1,2,3);  ', ' This insert 3 strings and 3 numbers into a table ', 0, 0, 0, NULL, NULL),
(3, 'add a column to a table', ' ALTER TABLE table-name\r\nADD column-name varchar(1000);', ' ', 0, 0, 0, NULL, NULL),
(4, 'sum columns ', '$sqlSumEgresos= \"SELECT (SUM(renta)+SUM(apartment)+SUM(tc12)+SUM(tc8)) AS Total FROM egresos\";\r\n$resultEgresos =mysqli_query($conn,$sqlSumEgresos);\r\n$rowEgresos = mysqli_fetch_assoc($resultEgresos); \r\n////\r\n< li> Resultado < span id=\"Resultado\">\' .$rowEgresos[\"Total\"]. \'< /span>< / li>', ' Shows the result of a sum of all columns of a table . This code need the if and while to fetch\r\nthe result in correct order ', 0, 0, 0, NULL, NULL),
(5, 'add primary key ', ' ALTER TABLE table-name\r\nADD CONSTRAINT PRIMARY KEY (ID);', ' add a primary key without auto increment  ', 0, 0, 0, NULL, NULL),
(6, 'change column name ', ' ALTER TABLE prueba CHANGE Numero4 Numero4 DECIMAL(6,2);', ' ', 0, 0, 0, NULL, NULL),
(7, 'select last limit ', 'SELECT colum-name AS \"alias\" , another-ColumName  FROM table-Name;  /// las comillas son para que no aparescan como mayusculas en los resultados\n SELECT Numero4 FROM prueba ORDER BY ID DESC LIMIT 1 \n              from          tablename\n             where         condition\n          group by       group_condition\n         HAVING         group_condition\n        ORDER BY       column_name  ', '', 0, 0, 0, NULL, NULL),
(8, 'update', ' UPDATE tableName\r\nSET columnName = 666\r\nWHERE ID = 2;', ' ', 0, 0, 0, NULL, NULL),
(9, 'aritmetica suma resta ', 'SELECT (column-name + column-name ) / table-name FROM table-name  AS result', ' ccc', 0, 0, 0, NULL, ' cc'),
(10, 'DISTINCT', 'SELECT DISTINCT  column-name FROM table-name; ', ' solo muestra los valores distintos ', 0, 0, 0, NULL, ' '),
(11, 'concatenar', 'SELECT column-name || \' text-to-be-added \'  || column-name\r\n\r\nFROM table-name; ', ' ss', 0, 0, 0, NULL, ' ss'),
(12, 'type', ' 1 DECIMAL(size, d)', '  1 An exact fixed-point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter. The maximum number for size is 65. The maximum number for d is 30. The default value \r\n    for size is 10. The default value for d is 0.', 0, 0, 0, NULL, ' https://www.w3schools.com/sql/sql_datatypes.asp'),
(13, 'default', 'CREATE TABLE t1 (\n  i     INT DEFAULT -1,\n  c     VARCHAR(10) DEFAULT \'\',\n  price DOUBLE(16,2) DEFAULT \'0.00\',\n tiempo DATE default CURRENT_TIMESTAMP\n); ', ' ', 0, 0, 0, NULL, ' https://dev.mysql.com/doc/refman/5.6/en/data-type-defaults.html'),
(14, 'check', 'CONSTRAINT CHK_state CHECK ( state = \'CA\' OR state = \'TX\') ', ' The CHECK constraint is used to limit the value range that can be placed in a column.\r\n\r\nIf you define a CHECK constraint on a single column it allows only certain values for this column.\r\n\r\nIf you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.\r\n\r\n', 0, 0, 0, NULL, ' https://www.w3schools.com/sql/sql_check.asp'),
(15, 'table name ', ' ALTER TABLE table_name\r\nRENAME TO new_table_name;\r\n\r\nALTER TABLE table_name\r\nCHANGE COLUMN old_name TO new_name;', ' cambia el nombre de la tabla \r\ncambia el nombre de la columna', 0, 0, 0, NULL, ' https://www.geeksforgeeks.org/sql-alter-rename/'),
(16, 'if and null desc rollup', ' SELECT if( movie_title is null, \"\", movie_title ), if(movie_title is null , \'\', release_date),  \r\nif(movie_title is null ,concat(\'El total es \',  count(movie_title) ), count(movie_title) ) ,\r\n  if (movie_title is null , \'  \', genre_1),  if(movie_title is null , \' \', director_1) FROM movies1 group by release_date desc, movie_title  with rollup ;', ' d', 0, 0, 0, NULL, ' s'),
(17, 'case ', ' SELECT OrderID, Quantity,\r\nCASE\r\n    WHEN Quantity > 30 THEN \"The quantity is greater than 30\"\r\n    WHEN Quantity = 30 THEN \"The quantity is 30\"\r\n    ELSE \"The quantity is under 30\"\r\nEND\r\nFROM OrderDetails;', 'La instrucción CASE pasa por condiciones y devuelve un valor cuando se cumple la primera condición (como una instrucción IF-THEN-ELSE). Entonces, una vez que una condición es verdadera, dejará de leer y devolverá el resultado.\r\nSi no se cumple ninguna condición, devolverá el valor de la cláusula ELSE.\r\nSi no hay una parte ELSE y ninguna condición es verdadera, devuelve NULL.', 0, 0, 0, NULL, ' https://www.w3schools.com/sql/func_mysql_case.asp'),
(18, 'copy table', 'CREATE  TABLE copy_actors \r\nAS (SELECT * FROM actors)\r\n ', ' crea la copia de una tabla', 0, 0, 0, NULL, ' http://www.rebellionrider.com/copy-table-with-or-without-data-using-create-table-as-statement/'),
(19, 'insert using a subquery', 'INSERT INTO sales_reps(id, name, salary, commission_pct)\r\nSELECT employee_id, last_name, salary, commission_pct\r\nFROM employees\r\nWHERE job_idLIKE \'%REP%\';', ' ', 0, 0, 0, NULL, ' '),
(20, 'insert all data of all rows', ' INSERT INTO sales_reps\r\nSELECT *\r\nFROM employees;', ' ', 0, 0, 0, NULL, ' '),
(21, 'create', ' ', ' ', 0, 0, 0, NULL, ' '),
(22, 'default', 'CREATE TABLE t1 (\n  -- literal defaults\n  i INT         DEFAULT 0,\n  c VARCHAR(10) DEFAULT \'\',-- expression defaults\n  f FLOAT       DEFAULT (RAND() * RAND()),\n  b BINARY(16)  DEFAULT (UUID_TO_BIN(UUID())),\n  d DATE        DEFAULT (CURRENT_DATE + INTERVAL 1 YEAR),\n  p POINT       DEFAULT (Point(0,0)),\n  j JSON        DEFAULT (JSON_ARRAY())\n); ', ' Create a default value', 0, 0, 0, NULL, 'https://dev.mysql.com/doc/refman/8.0/en/data-type-defaults.html#:~:text=If%20a%20data%20type%20specification,with%20no%20explicit%20DEFAULT%20clause. '),
(23, 'update row', ' UPDATE table_name\r\nSET column_name = \'Roberto\' WHERE id =  1;', ' ', 0, 0, 0, NULL, 'https://www.w3schools.com/sql/sql_update.asp '),
(24, 'list of users', ' select * FROM mysql.user;', ' show the list of users ', 0, 0, 0, NULL, ' https://alvinalexander.com/blog/post/mysql/show-users-i-ve-created-in-mysql-database/'),
(25, 'see constraints', ' SELECT \r\n  TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME\r\nFROM\r\n  INFORMATION_SCHEMA.KEY_COLUMN_USAGE\r\n', ' see the primary keys ', 0, 0, 0, NULL, ' https://stackoverflow.com/questions/201621/how-do-i-see-all-foreign-keys-to-a-table-or-column'),
(26, 'date stamp', ' CURRENT_TIMESTAMP', ' ', 0, 0, 0, NULL, ' https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html'),
(27, 'create', ' ', ' ', 0, 0, 0, NULL, ' '),
(28, 'dictionary', ' select  * from information_schema.tables ;', ' ', 0, 0, 0, NULL, ' '),
(29, 'modify', 'ALTER TABLE table_name\r\n MODIFY column_name varchar(50) not null ; ', ' ', 0, 0, 0, NULL, ' https://www.techonthenet.com/mysql/tables/alter_table.php'),
(30, 'auto increment start value', ' ALTER TABLE table_name AUTO_INCREMENT = start_value;\r\n', ' ', 0, 0, 0, NULL, ' https://www.techonthenet.com/mysql/auto_increment.php#:~:text=In%20MySQL%2C%20the%20syntax%20to,value%20you%20wish%20to%20change.'),
(31, 'auto increment change', ' ALTER TABLE suppliers AUTO_INCREMENT = 1; \n/// see the auto increment variable\n SHOW VARIABLES LIKE \'auto_inc%\'', ' ', 0, 0, 0, NULL, ' https://www.techonthenet.com/mysql/auto_increment_reset.php'),
(32, 'drop column delete', 'ALTER TABLE \"table_name\" DROP \"column_name\"; ', ' ', 0, 0, 0, NULL, ' https://www.mysqltutorial.org/mysql-drop-column/'),
(33, 'create user', 'Create user hfc\r\nidentified BY  password;  ', ' ', 0, 0, 0, NULL, ' '),
(34, 'command line conn user', ' C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin /// path for the . exe\r\n-u user -p \r\n/// type the password', ' ', 0, 0, 0, NULL, ' '),
(35, 'show grants', 'show grants for user_name; ', ' ', 0, 0, 0, NULL, ' '),
(36, 'grants show', 'show grants for user_name;\r\nshow grants for current_user; ', ' ', 0, 0, 0, NULL, ' https://dev.mysql.com/doc/refman/8.0/en/show-grants.html'),
(37, 'create view show view', 'CREATE VIEW    view_name\n AS \nSELECT * FROM assets where politic_id = 2; // query\nWITH READ ONLY  ///  [ optional ] \n\n\n\n SELECT * FROM INFORMATION_SCHEMA.VIEWS;  // where is the view  ', ' A view is a virtual table ', 0, 0, 0, NULL, ' https://dev.mysql.com/doc/refman/8.0/en/information-schema-views-table.html'),
(38, 'rename view', 'RENAME TABLE old_name\r\nTO new_name; ', ' ', 0, 0, 0, NULL, ' https://www.mysqltutorial.org/mysql-views/mysql-rename-view/'),
(39, 'update default ', ' ALTER TABLE table_name ALTER column_name SET DEFAULT CURRENT_TIME();', ' ', 0, 0, 0, NULL, ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `npm`
--

CREATE TABLE `npm` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `string4` varchar(1000) NOT NULL,
  `Numero1` int(55) NOT NULL,
  `Numero2` int(55) NOT NULL,
  `Numero3` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `npm`
--

INSERT INTO `npm` (`ID`, `String1`, `String2`, `String3`, `string4`, `Numero1`, `Numero2`, `Numero3`) VALUES
(1, 'install gulp', 'npm install  gulp --save-dev', ' ', ' ', 0, 0, 0),
(2, 'save as development', 'npm install <nameOfthePackage>  --save-dev', ' n other words, when you run npm install, your project\'s devDependencies will be installed, but the devDependencies for any packages that your app depends on will not be installed; further, other apps having your app as a dependency need not install your devDependencies. Such modules should only be needed when developing the app (eg grunt, mocha etc).', ' https://stackoverflow.com/questions/19223051/what-does-save-dev-mean-in-npm-install-grunt-save-dev#:~:text=%2D%2Dsave%2Ddev%3A%20Package%20will,documentation%20framework%20that%20you%20use.', 0, 0, 0),
(3, 'global path', ' npm config get prefix', ' ', ' ', 0, 0, 0),
(4, 'gulp working', 'const { src, dest, watch, series } = require(\'gulp\');\r\n// const sass = require(\'gulp-sass\');\r\n// const postcss = require(\'gulp-postcss\');\r\n// const cssnano = require(\'cssnano\');\r\n// const terser = require(\'gulp-terser\');\r\nconst browsersync = require(\'browser-sync\').create();\r\n\r\n// Sass Task\r\n// function scssTask(){\r\n//   return src(\'app/scss/style.scss\', { sourcemaps: true })\r\n//     .pipe(sass())\r\n//     .pipe(postcss([cssnano()]))\r\n//     .pipe(dest(\'dist\', { sourcemaps: \'.\' }));\r\n// }\r\n\r\n// JavaScript Task\r\n// function jsTask(){\r\n//   return src(\'app/js/index.js\', { sourcemaps: true })\r\n//     .pipe(terser())\r\n//     .pipe(dest(\'dist\', { sourcemaps: \'.\' }));\r\n// }\r\n\r\n// Browsersync Tasks\r\n// function browsersyncServe(cb){\r\n//   browsersync.init({\r\n//     server: {\r\n//       baseDir: \'.\'\r\n//     }\r\n//   });\r\n//   cb();\r\n// }\r\nlet directorio = \'survey\';\r\n\r\nbrowsersync.init({\r\n    proxy: `localhost/${directorio}`\r\n    // port: 8000  \r\n });// Watch Task\r\n \r\n\r\nfunction browsersyncReload(', ' ', ' ', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oracle`
--

CREATE TABLE `oracle` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `string4` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oracle`
--

INSERT INTO `oracle` (`ID`, `String1`, `String2`, `String3`, `string4`) VALUES
(1, 'hola ', 'hola  ', 'hola  ', 'holsa '),
(2, 'describe', ' Describe tableName;\r\nDESC tableName;', ' dd', ' dd'),
(3, 'order of arithmetic operations', '* /  + -  ', '  ', '   '),
(4, 'seft join employee', 'SELECT worker.last_name || \' works for \' || manager.last_name\r\nAS \"Works for\"\r\nFROM employees worker JOIN employees manager\r\nON (worker.manager_id = manager.employee_id); ', ' show the manager of each employee ', '.  '),
(5, 'string upper case lower case ', ' upper(column_name)  /// \n lower(column_name) //  \nINITCAP(column_name) /// capitalize the first letter \n ', ' ', ' '),
(6, 'substr string ', 'SUBSTR(character, postion, lenght);\nSUBSTR(zip, 2, 3)\nSUBSTR(zip, -3, 2) /// if the second argument is negative it counts from the end of the string ', ' The syntax of this function is SUBSTR(c, p, 1), where c represents the character string,\r\n p represents the beginning character position for the extraction, and 1 represents\r\n the (length) of the string to return in the query results.\r\nexample\r\n SUBSTR(zip, 2, 3) of   123456   will return  234 \r\n', ' '),
(7, 'string instr function', ' select column_name , instr( column_name , \'a\' , 3 , 1 ) FROM table_name;\r\n select column_name , instr( column_name , \'character to look\' , start position  , first , second .. character found ) FROM employees;', 'The INSTR (instring) function searches a string for a specified set of characters or a\r\nsubstring, and then returns a numeric value representing the first character position in\r\nwhich the substring is found. If the substring doesn’t exist in the string value, a 0 (zero) is\r\nreturned. Two arguments must be provided to the INSTR function: the string value to\r\nsearch and the characters or substring (enclosed in single quotes) to locate.\r\nTwo optional arguments are also available: start position, indicating on which\r\ncharacter of the string value the search should begin, and occurrence, which is the\r\ninstance of the search value to locate (that is, first occurrence, second occurrence, and\r\nso on). By default, the search begins at the beginning of the string value, and the position\r\nof the first occurrence is located. Figure 10-7 shows using different arguments in the\r\nINSTR function', ' '),
(8, 'instr  substr nested', ' SELECT  title , substr(title , instr(title,\' \', 1 , 2) ) FROM table_name; ', 'the instr gives the position of the character to be removed and substr removes it from there ', ' '),
(9, 'string lpad number', ' lpad(title , number of characters in total, \'simbol to be disblay \') \r\nlpad(title , 20, \'6\')\r\nSELECT title, lpad(title , 20, \'6\') FROM film  limit 10;  ', ' The syntax of the LPAD function is LPAD(c, l, s), where c represents the character\r\nstring to pad, 1 represents the length of the character string after padding, and s\r\nrepresents the symbol or character (enclosed in single quotes) to use as padding, as shown\r\nin Figure', ' '),
(10, 'replace string', 'replace( column_name ,  \' String to be found\', \'replacement\')\r\n\r\nreplace(producer , \'Music\' , \'\') ', '  REPLACE(c, s, r), where c represents the field to search, s represents the string of\r\ncharacters to find, and r represents the string of characters to substitute for s. In Figure\r\n10-13, REPLACE(address, \'P.O.\', \'POST OFFICE\') indicates substituting the string\r\nPOST OFFICE in the display every time Oracle 12c encounters the string P.O. in the\r\nAddress field of a customer.', ' '),
(11, 'translate , string ', ' translate(producer, \' M\', \'-m\')\r\ntranslate(column_name , \'character to be found\' , \' character to be used to replace\')', ' dsf', ' '),
(12, 'round number ', 'round(column_name , 1) \r\nround(column_name , side to round the number 1 is right side -1 left side of the comma or period) ;', ' \'0.99\', \'1.0\'\r\n\'4.99\', \'5.0\'\r\n\'2.99\', \'3.0\'\r\n', ' '),
(13, 'trunc numero ', 'trunc(column_name, 1 )\r\ntrunc(column_name, side to be removed )', '  The syntax of the TRUNC function is TRUNC\r\n(n, p), where n represents the numeric data or field to truncate, and p represents the\r\nposition of the digit where data should be truncated.', ' https://www.w3schools.com/sql/func_mysql_truncate.asp'),
(14, 'last day date', 'SELECT hire_date, last_day(hire_date) FROM employees; ', 'out put the last day of the month of the given date ', ' '),
(15, 'sub', ' ', ' ', ' '),
(16, 'nvl null', 'nvl( column_name, \'0\');\r\nnvl( column_name, \'value to be displayed\'); ', ' sdf', ' '),
(17, 'nvl2 null', 'nvl2( column_name, \'NOT NUll\', \'null\');\r\nnvl2( column_name, \'display if is not null\', \'characters to be display if is null\'); ', ' NVL2 lets you determine the value returned by a query based on whether a specified expression is null or not null. If expr1 is not null, then NVL2 returns expr2. If expr1 is null, then NVL2 returns expr3.\r\n\r\nThe argument expr1 can have any datatype. The arguments expr2 and expr3 can have any datatypes except LONG.\r\n\r\nIf the datatypes of expr2 and expr3 are different:', ' https://docs.oracle.com/cd/B19306_01/server.102/b14200/functions106.htm'),
(18, 'nullif null', ' NULLIF(column_name_1, column_name_2) /// comparations between 1 and 2\r\nnvl2(nullif(column_1 , column_2) , \'do somenthing\' , \'do something else\' )', ' NULLIF compares expr1 and expr2. If they are equal, then the function returns null. If they are not equal, then the function returns expr1. You cannot specify the literal NULL for expr1.\r\n\r\nIf both arguments are numeric datatypes, then Oracle Database determines the argument with the higher numeric precedence, implicitly converts the other argument to that datatype, and returns that datatype. If the arguments are not numeric, then they must be of the same datatype, or Oracle returns an error.\r\n\r\nThe NULLIF function is logically equivalent to the following CASE expression:', ' https://docs.oracle.com/cd/B19306_01/server.102/b14200/functions102.htm'),
(19, 'to_char char ', ' SELECT column_name, to_char((column_name/11.5) , \'$9,999.99\') FROM table_name;', ' TO_CHAR (datetime) converts a datetime or interval value of DATE, TIMESTAMP, TIMESTAMP WITH TIME ZONE, or TIMESTAMP WITH LOCAL TIME ZONE datatype to a value of VARCHAR2 datatype in the format specified by the date format fmt. If you omit fmt, then date is converted to a VARCHAR2 value as follows:', ' https://docs.oracle.com/cd/B19306_01/server.102/b14200/functions180.htm'),
(20, 'subquery rules', ' A subquery must be a complete query in itself—in other words, it must have\r\nat least a SELECT and a FROM clause.\r\n• A subquery, except one in the FROM clause, can’t have an ORDER BY clause.\r\nIf you need to display output in a specific order, include an ORDER BY\r\nclause as the outer query’s last clause.\r\n• A subquery must be enclosed in parentheses to separate it from the outer\r\nquery.\r\n• If you place a subquery in the outer query’s WHERE or HAVING clause, you\r\ncan do so only on the right side of the comparison operator.', ' ', ' '),
(21, 'join on', ' SELECT column FROM tables1 JOIN table2 ON d_songs.type_code = d_types.code;', ' Select the columns to be compared if the columns name are different ', ' '),
(22, 'ANY ', ' SELECT first_name , salary, department_id FROM employees WHERE  salary = ANY (SELECT max(salary) FROM employees group by department_id);', ' ', ' https://www.oracletutorial.com/oracle-basics/oracle-any/'),
(23, 'MERGE', ' MERGE INTO table_name tb1\r\nUSING source_table \r\nON (tb1.ID = tb2ID)\r\n    WHEN MATCHED THEN\r\n        UPDATE SET col1 = value1, col2 = value2,...\r\n        WHERE <update_condition>\r\n        [DELETE WHERE <delete_condition>]\r\n    WHEN NOT MATCHED THEN\r\n        INSERT (col1,col2,...)\r\n        values(value1,value2,...)\r\n        WHERE <insert_condition>;', ' The Oracle MERGE statement selects data from one or more source tables and updates or inserts it into a target table. The MERGE statement allows you to specify a condition to determine whether to update data from or insert data into the target table.', ' https://www.oracletutorial.com/oracle-basics/oracle-merge/'),
(24, 'nullif', 'SELECT NULLIF(value1,value2); ', ' La función NULLIF () devuelve NULL si dos expresiones son iguales; de lo contrario, devuelve la primera expresión.', ' La función NULLIF () devuelve NULL si dos expresiones son iguales; de lo contrario, devuelve la primera expresión.'),
(25, 'coalesce', ' SELECT COALESCE(NULL, NULL, NULL, \'W3Schools.com\', NULL, \'Example.com\');', ' La función COALESCE () devuelve el primer valor no nulo en una lista', ' https://www.w3schools.com/sql/func_sqlserver_coalesce.asp'),
(26, 'decode', ' SELECT last_name,\r\nDECODE(department_id,\r\n90, \'Management\',\r\n80, \'Sales\',\r\n60, \'It\',\r\n\'Other dept.\')\r\nAS \"Department\"\r\nFROM employees;', ' The most powerful of all of the BIFs are the Oracle decode and Oracle case function. The Oracle decode and case functions are used within the Oracle database to transform data values for one value to another.\r\nOne of the most amazing features of the case the Oracle decode statements is that they allow us to create an index on data column values that do not exist in the database.\r\nOracle started with the decode statement and later refined it in Oracle9i, morphing it into the case statement.\r\nLet\'s take a look at how the decode statement works. The Oracle decode statement was developed to allow us to transform data values at retrieval time. For example, say we have a column named REGION, with values of N, S, W and E. When we run SQL queries, we want to transform these values into North, South, East and West. Here is how we do this with the decode function:', ' http://www.dba-oracle.com/t_decode_function.htm'),
(27, 'update row', ' update tb\r\nset name = \'Roberto\' WHERE id =  1;', ' ', 'https://www.w3schools.com/sql/sql_update.asp'),
(28, 'unused', ' ALTER TABLE nemp SET UNUSED COLUMN bonus;', ' hhh', ' https://docs.oracle.com/cd/B28359_01/server.111/b28310/tables006.htm#ADMIN11660'),
(29, 'drop unsed', ' ALTER TABLE nemp \r\nDROP UNUSED columns;', ' Drop the columns set as unused', ' https://livesql.oracle.com/apex/livesql/docs/sqlrf/alter-table/drop-unused-cols.html'),
(30, 'data dictinary unused ', ' SELECT * FROM user_unused_col_tabs', ' USER_UNUSED_COL_TABS describes the tables owned by the current user that contain unused columns. Its columns (except for OWNER) are the same as those in ALL_UNUSED_COL_TABS.', ' '),
(31, 'drop unused columns', 'ALTER TABLE nemp \r\nDROP unused columns; ', ' Drop unused columns', 'https://livesql.oracle.com/apex/livesql/docs/sqlrf/alter-table/drop-unused-cols.html '),
(32, 'recyclebin', ' SELECT * FROM recyclebin;', ' shows tables that have been deleted ', ' https://docs.oracle.com/cd/B19306_01/server.102/b14237/statviews_4046.htm#REFRN23342'),
(33, 'Check tables ', ' SELECT table_name \r\nFROM \r\nuser_tables;', ' dd', ' dd'),
(34, 'truncate table', ' TRUNCATE TABLE table_name;', ' You cannot roll back a TRUNCATE TABLE statement, nor can you use a FLASHBACK TABLE statement to retrieve the contents of a table that has been truncated.', ' https://docs.oracle.com/cd/B28359_01/server.111/b28286/statements_10007.htm#SQLRF01707'),
(35, 'CREATE', ' ', ' ', ' '),
(36, 'change column name', 'ALTER TABLE table_name \r\nRENAME COLUMN \r\nold_column_name to new_column_name; ', ' ', ' https://www.geeksforgeeks.org/sql-alter-rename/'),
(37, 'auto incremente sequence trigger', ' CREATE SEQUENCE uno \r\nstart with 1\r\nincrement by 1 ;      /// tiene que crearce una secuancia primero // creo que la secuencia se puede utilzar varias veces\r\n\r\n\r\ncreate trigger triguno   /// segundo un trigger\r\nbefore INSERT ON tekila\r\nfor each row\r\nBEGIN\r\nSELECT uno.nextval into :new.id FROM DUAL ;\r\nEND;', ' Se debe crear secuencias y su trigger para usarlos como auto icremento. ', ' https://www.youtube.com/watch?v=9tVyOWNcbXA'),
(38, 'visible invisible', ' ALTER TABLE column_name\r\nMODIFY peso visible;\r\n ALTER TABLE column_name\r\nMODIFY peso invisible;', 'hides the column  ', 'https://docs.oracle.com/cd/E17952_01/mysql-8.0-en/invisible-indexes.html '),
(39, 'all users', ' DESC all_users;\r\nSELECT * FROM all_users;', ' display all users in ', ' 55'),
(40, 'user tables', ' SELECT * FROM user_tables;', ' display the tables that the current user has', ' dd'),
(41, 'time zone timestamp ', ' ALTER TABLE tekila \r\nADD hora TIMESTAMP with time zone;\r\n\r\nALTER TABLE tekila\r\nMODIFY hora default systimestamp;\r\n', 'insert the default of the time zone of the user ', ' https://www.oracletutorial.com/oracle-basics/oracle-timestamp/'),
(42, 'drop column ', ' ALTER TABLE table_name\r\nDROP column column_name;', ' delete a column', ' https://oracle-base.com/articles/8i/dropping-columns'),
(43, 'local time zone', ' ALTER TABLE tekila \r\nADD hora TIMESTAMP with local time zone;\r\n\r\nINSERT INTO table_name  (column_name) VALUES (systimestamp)', ' d', ' d'),
(44, 'interval to year and month', ' SELECT INTERVAL \'70\'  MONTH AS hola FROM dual;', 'how many year make the months entered ', ' https://oracle-base.com/articles/misc/oracle-dates-timestamps-and-intervals'),
(45, 'flashback', 'FLASHBACK TABLE tableName TO BEFORE DROP; ', 'recover table that has been drop previusly maybe by mistake ', ' https://docs.oracle.com/cd/B19306_01/server.102/b14200/statements_9012.htm'),
(46, 'comment on table', 'COMMENT ON TABLE table_name\r\n   IS    \'write the comment\';\r\n\r\nSELECT * FROM USER_TAB_COMMENTS \r\nWHERE table_name  = \'table_name\';\r\n\r\n ', 'how to comment and see the comments of the table ', ' https://docs.oracle.com/cd/B19306_01/server.102/b14200/statements_4009.htm'),
(47, 'comment columns', 'COMMENT ON column table_name.column_name\r\n   IS \' write the comments\'; \r\n\r\n <<<<<<<< see the comments on the column >>>>>>>\r\nSELECT * FROM USER_COL_COMMENTS\r\nWHERE table_name = \'TEKILA\';', ' create and see the comments of the columns', ' https://www.youtube.com/watch?v=QxOyeHJPU4Y'),
(48, 'constraint alter after pk ', 'ALTER TABLE table_name \r\nADD CONSTRAINT code_finder_id_pk PRIMARY KEY (column_name);   // primary key\r\n\r\nALTER TABLE table_name \r\nADD CONSTRAINT code_finder_id_ck PRIMARY KEY (ID,email); /// composite key\r\n\r\nALTER TABLE table_name \r\nADD CONSTRAINT table_name_id_fk FOREIGN KEY (ID); /// composite key\r\nREFERENCES code_finder (ID)\r\n', ' coments', ' https://docs.oracle.com/cd/B19306_01/server.102/b14200/clauses002.htm'),
(49, 'check constraint', 'ALTER TABLE table_name\r\nADD CONSTRAINT constraint_name_ck CHECK ( condition exemple orderdate =< 10  );\r\n ', ' Less than (<): retail < 200\r\n• Greater than (>): cost > 0\r\n• Range (BETWEEN): retail BETWEEN 0 AND 200\r\n• List of values (IN): region IN (\'NE\', \'SE\', \'NW\', \'SW\')', ' https://www.techonthenet.com/oracle/check.php'),
(50, 'modify constraint', 'alter table table_name\r\nMODIFY ( ID CONSTRAINT table_id_nn NOT NULL ); ', 'MODIFY constraint from null to not null ', ' '),
(51, 'table constraint', ' CREATE TABLE php \r\n( id number(2) not null , email varchar(20) NOT NULL, code varchar(300) NOT NULL, comentario varchar(300),\r\nCONSTRAINT php_id_pk PRIMARY KEY (id),\r\nCONSTRAINT php_email_uk UNIQUE (email)); // more than one column can be unique in the unique constrain\r\nDESCRIBE PHP;', ' kk', ' https://www.techonthenet.com/oracle/unique.php'),
(52, 'enable constraint disable', ' ALTER TABLE table_name\r\nDISABLE CONSTRAINT  constraint_name;\r\n\r\n ALTER TABLE table_name\r\nENABLE CONSTRAINT  constraint_name;', ' ', ' '),
(53, 'delete drop constraint', ' ALTER TABLE php\r\nDROP PRIMARY KEY ; // if is a primary key the constraint name is not necesary to be specified\r\n\r\nALTER TABLE php\r\nDROP CONSTRAINT constraint_name  /// delete the constraint name using its name', ' ', ' https://livesql.oracle.com/apex/livesql/file/content_FUBI3R35VQ3AOOC7YX2EX9IAQ.html'),
(54, 'dictionary', 'SELECT *  FROM user_tab_columns   or all_tables 0r user_tables\n             ', ' ', ' https://docs.oracle.com/cd/E11882_01/server.112/e40540/datadict.htm#CNCPT1209'),
(55, 'views create', 'CREATE OR REPLACE VIEW name_of_view\nAS \nSELECT first_name, last_name FROM employees  /// query\nWITH READ ONLY ;   [ np mysql]\nWITH CHECK OPTIONS ;  check the constrains  \n ', ' In Oracle, view is a virtual table that does not physically exist. It is stored in Oracle data dictionary and do not store any data. It can be executed when called. A view is created by a query joining one or more tables.', ' https://docs.oracle.com/cd/B19306_01/server.102/b14200/statements_8004.htm'),
(56, 'rownum', 'SELECT ROWNUM AS \"Longest employed\", last_name, hire_date\r\nFROM employees\r\nWHERE ROWNUM <=5;', ' ', ' https://docs.oracle.com/cd/B19306_01/server.102/b14200/pseudocolumns009.htm'),
(57, 'view check constraint ', ' CREATE OR REPLACE VIEW nombres \r\nAS\r\nSELECT employee_id , first_name, last_name , salary FROM employees WHERE employee_id > 100\r\nWITH CHECK OPTION CONSTRAINT view100_check;\r\n', ' ', ' '),
(58, 'view read only', 'CREATE OR REPLACE VIEW view_dept50\r\nAS SELECT department_id, employee_id, first_name, last_name, salary\r\nFROM employees\r\nWHERE department_id = 50\r\n << WITH READ ONLY  >>  // \r\n', ' ', ' '),
(59, 'sequence create', ' CREATE SEQUENCE ORDERS_ORDER#_SEQ\nINCREMENT BY 1\nSTART WITH 1\nNOCACHE \nNOCYCLE;\n/// find the  sequence \nSELECT object_name \nFROM user_objects \nWhere object_type  = \'SEQUENCE\' \n/// check details of the secuence\nSELECT *  \nFROM user_sequences \n/// insert \nINSERT INTO TEKILA (id,nombre , last_name)VALUES(ORDERS_ORDER#_SEQ.nextval, \'Roberto\',\'Balarezo\')\n\n /// valor actual\nORDERS_ORDER#_SEQ.currval\n\n', ' book page #188 ', ' https://docs.oracle.com/cd/B28359_01/server.111/b28286/statements_6015.htm#SQLRF01314'),
(60, 'sequence default', 'Create sequence test_defval_seq  /// creation of the sequence\r\nINCREMENT BY 1\r\nSTART WITH 100\r\nNOCACHE\r\nNOCYCLE;\r\n//// creation of the table\r\nCREATE TABLE test_test_defval\r\n(coll NUMBER DEFAULT test_defval_seq.NEXTVAL, COL2 NUMBER )\r\n\r\n\r\n\r\n\r\n ', ' ', ' '),
(61, 'drop sequence ', ' ', ' ', ' '),
(62, 'drop sequence', ' DROP SEQUENCE sequence_name;', ' ', ' '),
(63, 'generated as identity primary key', 'CREATE TABLE test_indent\r\n(coll NUMBER GENERATED AS IDENTITY PRIMARY KEY,\r\ncol2 NUMBER ) ', ' ', ' https://www.oracletutorial.com/oracle-basics/oracle-identity-column/'),
(64, 'index', ' ', ' ', ' '),
(65, 'explain plan ', 'EXPLAIN PLAN FOR SELECT * FROM employees ;\r\nselect * from table (dbms_xplan.display);\r\n ', ' ', ' https://blogs.oracle.com/optimizer/how-do-i-display-and-read-the-execution-plans-for-a-sql-statement'),
(66, 'index table', 'USER_IND_COLUMNS ', ' ', ' https://docs.oracle.com/cd/B28359_01/server.111/b28310/indexes007.htm#ADMIN11738'),
(67, 'create user', ' Create user user_name\r\nidentified BY \'password\' ', ' ', ' ');

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
  `links` varchar(1000) DEFAULT NULL,
  `string4` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `php`
--

INSERT INTO `php` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`, `links`, `string4`) VALUES
(8, 'create table', 'parafo  1', ' ', 0, 0, 0, NULL, NULL),
(9, 'connect ', '// Database connection settings \r\n $host = \'localhost\';\r\n $user = \'root\';\r\n $pass = \'\';\r\n $db = \'templates\';\r\n$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);', ' ', 0, 0, 0, NULL, NULL),
(11, 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet neque, soluta libero\r\n nesciunt quibusdam inventore id, quis, quasi, adipisci ad illo rem beatae \r\nperferendis deserunt accusamus molestias possimus alias molestiae!', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet neque7, soluta libero\r\n nesciunt qui', 0, 0, 0, NULL, NULL),
(12, 'get retrieve obtener', ' include \'conn.php\';\r\n$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);\r\n$sql= \"SELECT * FROM ingresos\";\r\n$result =mysqli_query($conn,$sql);\r\nif (mysqli_num_rows($result)>0) {\r\n	$output=\' \';\r\n	$output.=\' <here come tags> \';\r\n	while ($row = mysqli_fetch_assoc($result)) {\r\n		$output .= \'\r\n	<tagli> Sueldo <spanTag id=\"sueldo\">\' .$row[\"sueldo\"]. \'</spanTag></tagli>\r\n	 \';\r\n}\r\necho $output;\r\n}else{\r\n	echo \'Data not found\';\r\n}\r\n?>', ' ', 0, 0, 0, NULL, NULL),
(13, 'Convert JSON string to Array', '//Convert JSON string to Array  \r\n$someArray = json_decode($someJSON, true);\r\n  print_r($someArray);        // Dump all data of the Array\r\n  echo $someArray[0][\"name\"]; // Access Array data', ' PHP >= 5.2.0 features a function, json_decode, that decodes a JSON string into a PHP variable. By d', 0, 0, 0, 'https://jonsuh.com/blog/convert-loop-through-json-php-javascript-arrays-objects/', NULL),
(14, 'add a column', 'ALTER TABLE egresos\r\nADD fecha varchar(55); ', ' ', 0, 0, 0, NULL, NULL),
(15, 'get a var ', ' $varAssingn = mysqli_real_escape_string($conn,$_POST[\'nameOftheInput\']);', ' ', 0, 0, 0, NULL, NULL),
(16, 'insert send ', ' if (isset($_POST[\'Departamento\'])) {\r\n\r\ninclude \'conn.php\';\r\n\r\n$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);\r\n$Piso = mysqli_real_escape_string($conn,$_POST[\'Piso\']);\r\n$Departamento =  mysqli_real_escape_string($conn,$_POST[\'Departamento\']);\r\n$Edificio =  mysqli_real_escape_string($conn,$_POST[\'Edificio\']);\r\n$Referencia =  mysqli_real_escape_string($conn,$_POST[\'Referencia\']);\r\n	\r\n$misqldata = \" INSERT INTO Hospital (Piso, Departamento, Edificio,Referencia) VALUES\r\n (\'$Piso\',\'$Departamento\',\'$Edificio\', \'$Referencia\' );\";  \r\n	mysqli_query($conn, $misqldata);\r\n	\r\n} else{\r\n	header(\"Location: ../index.php\");\r\n	exit();\r\n\r\n}', ' ', 0, 0, 0, NULL, NULL),
(17, 'object php to javascript object', ' <?php \r\n$host = \"localhost\";\r\n$user = \"root\";\r\n$password = \"\";\r\n$dbname = \"ejersicios\";\r\n\r\n$dsn = \'mysql:host=\' . $host . \';dbname=\'. $dbname;\r\n// create PDO instanse \r\n$pdo = new PDO($dsn, $user ,$password);\r\n////\r\n\r\n$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_OBJ);\r\n///\r\n// PDO QUERY\r\n$stmt =  $pdo->query( \'SELECT * FROM ejersicios\');\r\n\r\n// while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {\r\n  	\r\n// 	echo $row[\'String1\'] . \'<br>\'; \r\n\r\n//   }  \r\n\r\nwhile ($row = $stmt->fetch(PDO::FETCH_OBJ)) { // get data as a object (PDO::FETCH_OBJ)	\r\n	echo $row->String1 . \'<br>\'; \r\n	$rows[] = $row; // concatenate the data to row \r\n  } ;\r\n\r\n   echo json_encode($rows); /// transform into a object \r\n ?>\r\n\r\n <script type=\"text/javascript\">\r\n 	\r\n 	let rows = <?php  echo json_encode($rows); ?>; /// tran\r\n 	console.log(rows);\r\n 	// let rowses = JSON.stringify(rows); /// convert a object into a string \r\n 	// console.log(rowses);\r\n </script>', ' ', 0, 0, 0, NULL, NULL),
(18, 'parameters', 'http://localhost/urlparameters/index.php?name=smael&age=33', ' (?) indicates that the parameters start \r\n(&) separates the parameters   /// ', 0, 0, 0, NULL, ' https://www.youtube.com/watch?v=afhePzFcwdE'),
(19, 'array php to javascript ', ' var urlArray = <?php echo \'[\"\' . implode(\'\", \"\', $phpArray) . \'\"]\' ?>;  ', ' ', 0, 0, 0, NULL, ' '),
(20, 'array to object javascript ', ' while\r\n$rows[] = $row;  /// concatenear los datos a una nueva variable\r\nend while ///>>\r\n<script>\r\nlet tkl = <?php echo json_encode($rows) ?>;  transformar en object\r\n</script>', ' ', 0, 0, 0, NULL, ' https://stackoverflow.com/questions/1869091/how-to-convert-an-array-to-object-in-php'),
(21, 'class', ' class Person { \r\n	 private $age = \"25\";\r\n	 private $last = \"Araque\";\r\n	 private $first = \"roberto\";\r\n\r\n	 public function metodo(){\r\n	  $a = $this->first;\r\n	  return $a;\r\n  }\r\n// print the class\r\n$person = new Person();\r\necho $person->metodo();', ' ', 0, 0, 0, NULL, ' https://www.php.net/manual/en/language.oop5.php'),
(22, 'extend classes ', 'class Person { \n	 protected $first = \"roberto\";\n	 // protected alows classes inside clases to acces to properties\n	 private $last = \"Araque\";\n	 private $age = \"25\"; \n// proterties and method goes here\n}\n\nclass Pet extends Person {\n     public function owner(){\n	  $a = $this->first;\n	  return $a;\n  }\n}  \n\n$person = new Pet();\necho $person->owner();', ' ', 0, 0, 0, NULL, ' https://www.php.net/manual/en/language.oop5.inheritance.php'),
(23, 'class constructor ', 'class Person { \n	public	$name;\n	public  $lastName;\n	public  $age;\n	/// methos\n	public function __construct($name, $lastName, $age){\n     $this->name  = $name;\n     $this->lastName  = $lastName;\n     $this->age  = $age ;\n\n	}\n	public function setName($name){\n	$this->name = $name; 	\n	}\n	\n}  \n$person1 = new Person(\'Roberto\',\'Velasco\',33);\necho $person1->lastName;\necho $person1->age;\n', ' ', 0, 0, 0, NULL, ' https://www.w3schools.com/php/php_oop_constructor.asp'),
(24, 'delete object ', 'class newClass { \r\n	public	$name;\r\n	public  $lastName;\r\n	public function __destructor(){\r\n		\r\n	}\r\n}\r\n\r\n$object = new newClass;\r\nunset($object);', ' ', 0, 0, 0, NULL, ' https://www.youtube.com/watch?v=xeKc5VGUkPM&list=PL0eyrZgxdwhypQiZnYXM7z7-OTkcMgGPh&index=7'),
(25, 'static class', ' class newClass { \r\n	public	$name;\r\n	public  $lastName;\r\n	public  $age;\r\n        public static $religion = 666;\r\n	public static function setDrinkingAge($newDA){\r\n		self::$setDrinkingAge == $newDA;\r\n	}\r\n}', ' ', 0, 0, 0, NULL, ' https://www.youtube.com/watch?v=L9jLxuLAAIY&list=PL0eyrZgxdwhypQiZnYXM7z7-OTkcMgGPh&index=8'),
(26, 'auto loader object ', ' <?php \r\nspl_autoload_register(\'myAutoLoader\'); /// the parameter is the funcion inside quotes \r\n\r\nfunction myAutoLoader($className){ \r\n$path =\"classes/\";\r\n$extension = \'.class.php\';\r\n$fullPath = $path . $className . $extension;\r\nif (!file_exists($fullPath)) {\r\n return false;\r\n}\r\ninclude_once $fullPath;  \r\n}\r\n\r\n ?>\r\n<?php\r\ninclude \'include/autoLoader.inc.php\';  /// do not forget to include the file where the loader is\r\n?>', ' ', 0, 0, 0, NULL, ' https://www.youtube.com/watch?v=z3pZdmJ64jo&list=PL0eyrZgxdwhypQiZnYXM7z7-OTkcMgGPh&index=9'),
(27, 'get a single values mysql', '	 $getTotalrows = mysqli_fetch_assoc(mysqli_query($conn, \"SELECT count(*) as total_Rows FROM personal_finances_assets WHERE politic_id = $search\"));\r\n	 $totalRows = $getTotalrows[\'total_Rows\']; // this line is optional  ', ' ', 0, 0, 0, NULL, ' '),
(28, 'heredoc <<<', '$string = \'HOLA MUNDO\';\n \n echo <<<MYTEXT\n $string\nThis is a\ndemo message\nwith heredoc.\nMYTEXT;\n\n ', ' ', 0, 0, 0, NULL, ' https://phpf1.com/tutorial/php-heredoc-syntax.html'),
(29, 'ternary operator ', 'echo  (($a > $b) ?  \" $a es mayor a $b\" : \"$b es mayor a $a\" ) ;\r\ncerrar con parentisis ternary operator para expecificar su uso\r\n\r\n(Condition) ? (Statement1) : (Statement2);\r\n                          true                 false', ' ', 0, 0, 0, NULL, ' https://www.codementor.io/@sayantinideb/ternary-operator-in-php-how-to-use-the-php-ternary-operator-x0ubd3po6'),
(30, 'error suppression operator ', ' @$variable = \'si algun error se genera no sera mostrado automaticamente\';\r\nphp_errormsg;  /// ahi estara los errores que se escondan. ', ' (@)', 0, 0, 0, NULL, ' https://www.php.net/manual/en/language.operators.errorcontrol.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phyton`
--

CREATE TABLE `phyton` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `Numero1` int(55) NOT NULL,
  `Numero2` int(55) NOT NULL,
  `Numero3` int(55) NOT NULL,
  `string4` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phyton`
--

INSERT INTO `phyton` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`, `string4`) VALUES
(1, 'provando', ' def isprime(n):\r\n    if n <= 1:\r\n        return False\r\n    for x in range(2, n):\r\n        if n % x == 0:\r\n            return False\r\n    else:\r\n        return True\r\n\r\nn = 5\r\nif isprime(n):\r\n    print(f\'{n} is prime\')\r\nelse:\r\n    print(f\'{n} not prime\')\r\n', ' Funciono', 0, 0, 0, NULL),
(2, 'format method', 'x = 45 \r\nprint(f\' this is x. {x}\') ', ' how to show variables ', 0, 0, 0, NULL),
(3, 'if condition', 'x = 5\r\ny = 73\r\n\r\nif x == 5:\r\n    print(f\'{x} es 5 and y is {y}\')\r\nelif x == 6:    \r\n    print(f\'{x} es 6 \') ', ' ', 0, 0, 0, NULL),
(4, 'if condition', 'x = 5\r\ny = 73\r\n\r\nif x == 5:\r\n    print(f\'{x} es 5 and y is {y}\')\r\nelif x == 6:    \r\n    print(f\'{x} es 6 \') ', ' ', 0, 0, 0, NULL),
(5, 'while fibonacci', 'a, b = 0, 1\r\nwhile b < 10000:\r\n    print(b, end = \' \', flush = True)\r\n    a, b = b, a + b\r\n\r\nprint() # line ending\r\n ', ' ', 0, 0, 0, NULL),
(6, 'for', ' words = [\'one\', \'two\', \'three\', \'four\', \'five\']\r\n\r\nfor i in words:\r\n    print(i)\r\n\r\n', ' ', 0, 0, 0, NULL),
(7, 'is prime function', ' def isprime(n):\r\n    if n <= 1:\r\n        return False\r\n    for x in range(2, n):\r\n        if n % x == 0:\r\n            return False\r\n    else:\r\n        return True\r\n\r\nn = 8\r\nif isprime(n):\r\n    print(f\'{n} is prime\')\r\nelse:\r\n    print(f\'{n} not prime\')\r\n', 'examina si el numero ingresado es numero primo o no ', 0, 0, 0, NULL),
(8, 'string mayuscula miniscula ', ' nameMin = \'Hola roberto\'.lower()\r\nnameMay = \'Hola roberto\'.upper()\r\n \r\nprint(nameMin)\r\nprint(nameMay)', ' ', 0, 0, 0, NULL),
(9, 'decimal', 'from decimal import *\r\na = Decimal(\'0.10\')\r\nb = Decimal(\'0.30\')\r\nx = a + a + a - b\r\n\r\nprint(f\'{x}\')\r\nprint(type(x))  ', ' ', 0, 0, 0, NULL),
(10, 'range', ' x = range(5,50,5)\r\nfor i in x:\r\n\r\n    print(f\', i is {i}\')', ' x = range(5,50,5)  // accept three arguments \r\n 1 the begginig \r\n 2 the end \r\n 3 the inervales\r\nor just the end \r\nx = range(50)\r\n', 0, 0, 0, ' '),
(11, 'diccionaries dict', ' #!/usr/bin/env python3\r\n# Copyright 2009-2017 BHG http://bw.org/\r\nx = { \'one\': 1 , \'two\': 2 , \'three\':3}\r\nx[\'two\'] = 666\r\nfor k , v in x.items():\r\n    print(f\'k is {k} v is {v}\')\r\nprint(f\'how to get the values {x[\"one\"]}\')    \r\nprint(f\'another way to get the values  {x.get(\"two\")}\')\r\n\r\n#clear() function\r\n\r\n# x.clear()\r\n# print(x)\r\ny =  x.copy()\r\n\r\nprint(f\'this is a copy   {y[\"two\"]})\')\r\n# copy the diccionary\r\n\r\nprint(f\'{y.values()}\')\r\n\r\n# item print all the values inside the diccionary\r\nprint(y.items())\r\n# return all the keys that the diccionary has\r\nprint(f\" this is the keys() function {x.keys}\")\r\n\r\n# diccinary constructor \r\nmydik = dict( borges = \'El laberinto\' , allan_poe = \'El cuervo\')\r\nprint(mydik)\r\n#formkeys get the kays  #\r\nautores = {\'poe\':\'el cuervo\',\'lovecraft\':\'necronomicom\',\'boudelaire\':\'las flores del mal\'}\r\nmasautores = {\'neruda\':\'poema 20\',\'adum\':\'quito amado\'}\r\ntodos = dict.fromkeys(autores,masautores)\r\nprint(todos)\r\n', ' ', 0, 0, 0, ' https://www.youtube.com/watch?v=rZjhId0VkuY'),
(12, 'Aritmethic operators operadores aritmeticos', '+  Addition		a + b = 30                Adds values on either side of the operator.\r\n -  Subtraction	        a – b = -10               Subtracts right hand operand from left hand operand.	  \r\n*   Multiplication	a * b = 200               Multiplies values on either side of the operator  \r\n/   Division	        b / a = 2                   Divides left hand operand by right hand operand	\r\n%  Modulus	        b % a = 0                 Divides left hand operand by right hand operand and returns remainder	\r\n**  Exponent	        a**b =10 to the power 20  Performs exponential (power) calculation on operators	\r\n//  Floor Division - The division of operands where the result is the quotient in which the digits after the decimal point are removed. \r\n                                 But if one of the operands is negative, the result is floored, i.e., rounded away from zero (towards negative infinity) \r\n                −	       9//2 = 4 and 9.0//2.0 = 4.0, -11//3 = -4, -11.0//3 = -4.0', ' ', 0, 0, 0, ' https://www.tutorialspoint.com/python/python_basic_operators.htm'),
(13, ' Membership operators ', ' x = \'Hello world\'\r\ny = {1:\'a\',2:\'b\'}\r\n\r\n# Output: True\r\nprint(\'H\' in x)\r\n\r\n# Output: True\r\nprint(\'hello\' not in x)\r\n\r\n# Output: True\r\nprint(1 in y)\r\n\r\n# Output: False\r\nprint(\"x\" in y[1])', ' check if a value is in the variable ', 0, 0, 0, 'https://www.programiz.com/python-programming/operators');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `politics`
--

CREATE TABLE `politics` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(33) DEFAULT NULL,
  `apellido` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `politics`
--

INSERT INTO `politics` (`ID`, `nombre`, `apellido`) VALUES
(1, 'ROBERTO', 'ARAQUE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r`
--

CREATE TABLE `r` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `string4` varchar(1000) NOT NULL,
  `Numero1` int(11) NOT NULL,
  `Numero2` int(11) NOT NULL,
  `Numero3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `r`
--

INSERT INTO `r` (`ID`, `String1`, `String2`, `String3`, `string4`, `Numero1`, `Numero2`, `Numero3`) VALUES
(1, 'funciono', 'funciono ', 'funciono ', 'funciono ', 0, 0, 0),
(2, 'Sequence ', ' # SEQUENCES ################################################\r\n\r\n# Create sequential data\r\n0:10     # 0 through 10\r\n10:0     # 10 through 0\r\nseq(10)  # 1 to 10\r\nseq(30, 0, by = -3)  # Count down by 3', ' ', ' https://stat.ethz.ch/R-manual/R-devel/library/base/html/seq.html', 0, 0, 0),
(3, 'basic math', 'x <- c(1, 2, 5, 9)  # c = Combine/collect/concatenate\r\nx /  15                   # Print contents of x in Console\r\nx *  15\r\nx +  15\r\n ', 'that example shows a basic math on a vector ', ' https://www.datamentor.io/r-programming/operator/', 0, 0, 0),
(4, 'Clean up', ' # CLEAN UP #################################################\r\n\r\n# Clear environment\r\nrm(list = ls()) \r\n\r\n# Clear console\r\ncat(\"\\014\")  # ctrl+L\r\n\r\n# Clear mind :)\r\n', ' ..', ' https://www.youtube.com/watch?v=rt_q_E7hrIc', 0, 0, 0),
(5, 'vector', 'v1 <- c(1, 2, 3, 4, 5)\r\nv2 <- c(\"a\", \"b\", \"c\")\r\nv3 <- c(TRUE, TRUE, FALSE, FALSE, TRUE)\r\nlength(v1) // ', ' ..', ' https://www.datamentor.io/r-programming/vector/', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reactjs`
--

CREATE TABLE `reactjs` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(100) NOT NULL,
  `string4` varchar(1000) NOT NULL,
  `Numero1` int(11) NOT NULL,
  `Numero2` int(11) NOT NULL,
  `Numero3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reactjs`
--

INSERT INTO `reactjs` (`ID`, `String1`, `String2`, `String3`, `string4`, `Numero1`, `Numero2`, `Numero3`) VALUES
(1, 'es una prueva', 'si funfionoa ', 'lala ', 'lkasjfl ', 0, 0, 0),
(2, 'variables collect', 'a <- 10\r\nx<- c(1,2,3,4 )  # c = combine /collect/concatenate  ', ' comment', ' https://www.tutorialspoint.com/r/r_variables.htm#:~:text=A%20variable%20provides%20us%20with,the%20dot%20or%20underline%20characters.', 0, 0, 0);

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
  `Numero3` int(11) NOT NULL,
  `string4` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sass`
--

INSERT INTO `sass` (`ID`, `String1`, `String2`, `String3`, `Numero1`, `Numero2`, `Numero3`, `string4`) VALUES
(6, 'salir gulp', 'ctrl /c  ', ' Exit command line when using gulp ', 0, 0, 0, NULL);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sublime`
--

CREATE TABLE `sublime` (
  `ID` int(11) NOT NULL,
  `String1` varchar(1000) NOT NULL,
  `String2` varchar(1000) NOT NULL,
  `String3` varchar(1000) NOT NULL,
  `string4` varchar(1000) NOT NULL,
  `Numero1` int(55) NOT NULL,
  `Numero2` int(55) NOT NULL,
  `Numero3` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sublime`
--

INSERT INTO `sublime` (`ID`, `String1`, `String2`, `String3`, `string4`, `Numero1`, `Numero2`, `Numero3`) VALUES
(1, ' new snippet', ' <snippet>\r\n	<content><![CDATA[\r\nlet ${1:name} = document.getElementById(\'${2:idname}\');\r\n]]></content>\r\n	<!-- Optional: Set a tabTrigger to define how to trigger the snippet -->\r\n	<tabTrigger>id</tabTrigger>\r\n	<!-- Optional: Set a scope to limit where the snippet will trigger -->\r\n	<scope>source.js</scope>\r\n</snippet>\r\n<!--  $1 where the pointer appears first \r\n      $2 next tab end continue\r\n      ${1:string} to include a string \r\n	  	\r\n -->', 'in the bar tool    \r\n tool/developer/new snippet', ' https://www.youtube.com/watch?v=zS_4yLizMBw', 0, 0, 0),
(2, 'indent a group of code Shortcut Keys', ' crtl -> ]  or  crtl -> ]', ' ', ' ', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usercodes`
--

CREATE TABLE `usercodes` (
  `IDuserCodes` int(11) NOT NULL,
  `iDuser` int(11) NOT NULL,
  `iDlenguaje` int(11) NOT NULL,
  `code` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `tags` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usercodes`
--

INSERT INTO `usercodes` (`IDuserCodes`, `iDuser`, `iDlenguaje`, `code`, `description`, `tags`) VALUES
(5, 1, 1, ' var text = \'42px\';\r\nvar integer = parseInt(text, 10);\r\n// returns 42', 'The parseInt() method converts a string into an integer (a whole number).\r\nIt accepts two arguments. The first argument is the string to convert. The second argument is called the radix.\r\nThis is the base number used in mathematical systems. For our use, it should always be 10.\r\nIt accepts two argument', 'string to number parseInt()'),
(6, 1, 1, ' var text = \'3.14someRandomStuff\';\r\nvar pointNum = parseFloat(text);\r\n// returns 3.14\r\n', ' The parseFloat() method converts a string into a point number (a number with decimal points). You can even pass in strings with random text in them.', 'string to number parseFloat()'),
(7, 1, 1, 'variableName.addEventListener(\"click\",function (event) {\r\n	if (event.target.tagName == \"LI\") {\r\n		alert(event.target.tagName);\r\n	};\r\n},true);\r\n ', ' ', 'event target'),
(8, 1, 1, ' let productosObject = {\"product1\":{ \"precio\":5.5 ,\"nombre\":\"combo_pilsener\"}, \r\n\"product2\":{ \"precio\":5 ,\"nombre\":\"combo_corona\"},\r\n\"product3\":{ \"precio\":10 ,\"nombre\":\"sangria\"}', ' ', 'object'),
(9, 1, 1, ' \r\nObject.keys(nameOfObject).forEach( function(item) {\r\n	console.log(\"this is the  \" + item);\r\n	console.log(nameOfObject[item].propertyOfObject);\r\n\r\n});', ' ', 'foreach object keys '),
(10, 1, 1, ' Object.keys(nameOfobject).length);', ' how many items does the object contain', 'object leght'),
(11, 1, 1, 'var streetadress = show,13; \r\n\r\nvar streetaddress= addy.substr(0, addy.indexOf(\',\'));', ' extrae el texta que esta antes de el caracter especificado en el parametro del indexof', 'get part of the a string'),
(12, 1, 1, 'console.log(\'soy size y funcino bien \');\r\nlet alto = window.innerHeight;\r\nlet ancho = window.innerWidth;\r\ndocument.getElementById(\'container\').style.height = alto + \"px\" ;\r\ndocument.getElementById(\'container\').style.width = ancho + \"px\" ;\r\n ', ' the file size', 'get size window innerHeight innerWidth'),
(13, 1, 1, 'let result = $.grep(object,function(e){return e.key==\"Club\"});\r\nconsole.log(result);\r\n ', ' ', 'get a key object by its value'),
(14, 1, 1, ' let object= JSON.stringify(object); /// convert a object into a string ', ' ', 'convert a object into a string '),
(15, 1, 1, 'var fecha = d.getDate();\r\nvar dia = d.getDay();\r\nvar anio = d.getFullYear();\r\nvar hora = d.getHours();\r\nvar minutos = d.getMinutes();', ' ', ''),
(16, 1, 1, '(function () {\r\n    \'use strict\';\r\n    \r\n    var module = {\r\n        options: [],\r\n        header: [navigator.platform, navigator.userAgent, navigator.appVersion, navigator.vendor, window.opera],\r\n        dataos: [\r\n            { name: \'Windows Phone\', value: \'Windows Phone\', version: \'OS\' },\r\n            { name: \'Windows\', value: \'Win\', version: \'NT\' },\r\n            { name: \'iPhone\', value: \'iPhone\', version: \'OS\' },\r\n            { name: \'iPad\', value: \'iPad\', version: \'OS\' },\r\n            { name: \'Kindle\', value: \'Silk\', version: \'Silk\' },\r\n            { name: \'Android\', value: \'Android\', version: \'Android\' },\r\n            { name: \'PlayBook\', value: \'PlayBook\', version: \'OS\' },\r\n            { name: \'BlackBerry\', value: \'BlackBerry\', version: \'/\' },\r\n            { name: \'Macintosh\', value: \'Mac\', version: \'OS X\' },\r\n            { name: \'Linux\', value: \'Linux\', version: \'rv\' },\r\n            { name: \'Palm\', value: \'Palm\', version: \'PalmOS\' }\r\n        ],\r\n        databrowser: [\r\n        ', ' ', 'get device information'),
(17, 1, 1, ' $.ajax({  \r\n                     url:\"php/insert.php\",  \r\n                     method:\"POST\",  \r\n                     data:$(\'#form3, #form2\').serialize() ,   \r\n                     success:function(data){  \r\n                          $(\'#form3\').trigger(\"reset\");                            \r\n                     }  \r\n                });\r\n     	////////// otro metodo\r\njQuery.ajax({\r\n    url: \'/some/endpoint.php\',\r\n    method: \'GET\',\r\n    data: $(\'#the-form\').serialize()\r\n}).done(function (response) {\r\n    // Do something with the response\r\n}).fail(function () {\r\n    // Whoops; show an error.\r\n}); ', ' ', 'serialize a form php mysql'),
(18, 1, 1, 'Math.floor(Math.random() * 10); \r\n', ' ', 'random number'),
(19, 1, 1, 'let paises = [];\r\nlet southAmerica = [];\r\nlet t = 0;\r\nlet paisesArray = [\"Argentina\",\"Ecuador\",\"Peru\",\"Chile\",\"Mexico\", \"united states\"];\r\n\r\nfor (var i = 1; i <= resultado.features.length - 1; i++) {\r\n  	for (var s = 0; s <= paisesArray.length; s++) {\r\n  		if (resultado.features[i].attributes.Combined_Key == paisesArray[s]) {\r\n        southAmerica[t] =  resultado.features[i].attributes;\r\n        t++;\r\n  		}\r\n  	} /// end of for \r\n} // end of for  resultado.features.length\r\n ', ' busca un valor deacuerdo con los elementos de el paisesArray', 'find various value object  varios'),
(20, 1, 1, ' let date = \'31/01/1987\';\nlet newDate =   date.split(\"/\");\nlet newDateFormat = newDate[2] +\"-\"+ newDate[1]+\"-\" + newDate[0];\nconsole.log(newDateFormat); \nparseTime = d3.timeParse(\"% Y-% m-% d %H:% M:% S\"); /// send it to d3.js\n', ' ', 'change date format to mysql '),
(21, 1, 1, '  sur = southAmerica.sort((a,b)=>{\r\nreturn (a.value< b.value) ? 1 : -1 \r\n});\r\n', ' ', 'sort objects '),
(22, 1, 1, 'let phone = function (name,precio,cantidad,colorf,colorb){\r\nthis.name = name,\r\nthis.precio = precio,\r\nthis.cantidad = cantidad,\r\nthis.color = {\r\n	front : colorf,\r\n	back : colorb\r\n         }, \r\n     makeCall = function(){\r\n     	console.log(\'funciono\');\r\n     }\r\n};\r\n	 \r\nvar x = new phone (samsung,300,1,\'white\',\'black\');', ' ', 'constructor object'),
(23, 1, 1, ' let result = $.grep(rows,function(e){return e.nombre==\"Club\"});\r\n console.log(result);', ' find the key of a array nested with objects by its value ', 'find object value'),
(24, 1, 1, '<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script> ', ' something', 'jquery link'),
(25, 1, 1, ' let coutryData = {\r\n\r\n	items: [ \'China\', \'USA\', \'India\'],\r\n	addItem(item){\r\n		this.items.push(item)\r\n	},\r\n	removeItem(index,item){\r\n		this.items.splice(index,1); /// remove just one item \r\n	},\r\n	updateItem(index, newItem){\r\n		this.items[index] = newItem;\r\n	} \r\n};\r\n\r\n  d3.select(\'ul\')\r\n  .selectAll(\'li\')\r\n  .data(coutryData.items , data => data) // so d3 can check the data itself and not the index\r\n  .enter()\r\n  .append(\'li\')\r\n  .text(data => data); /// d3 does not rerender all data but just what has changed \r\n\r\n\r\n  setTimeout( ()=>{\r\n  	coutryData.addItem(\'Ecuador\')\r\n  	d3.select(\'ul\')\r\n  .selectAll(\'li\')\r\n  .data(coutryData.items , data => data)\r\n  .enter()\r\n  .append(\'li\')\r\n  .classed(\'added\',true)\r\n  .text(data => data);\r\n\r\n\r\n  }, 2000)\r\n\r\n  setTimeout( ()=>{\r\n  	coutryData.removeItem(2);\r\n  	d3.select(\'ul\')\r\n  .selectAll(\'li\')\r\n  .data(coutryData.items, data => data)\r\n  .exit()\r\n  .remove()\r\n  .classed(\'redundant\',true)\r\n\r\n  }, 4000)\r\n\r\n\r\n setTimeout( ()=>{\r\n  	coutryData.updateIt', ' ', 'add remove update data '),
(26, 1, 1, ' var person = {\r\n  firstName:\"John\",\r\n  lastName:\"Doe\",\r\n  age:50,\r\n  eyeColor:\"blue\"\r\n};\r\n\r\ndelete person.age;  // or delete person[\"age\"];\r\n\r\n// Before deletion: person.age = 50, after deletion, person.age = undefined', ' ', 'delete object'),
(27, 1, 1, ' let maximo = d3.max(d3.entries(data[0]).map((s) => s.value));\r\n console.log( maximo);', ' ', 'max value of a object or array with diferents keys'),
(28, 1, 1, '  let EcuadorDataPdp = [];\r\n\r\n ecuadorDataP = function (pobresa,desempleo,poblacion,anio,color){ /// THIS IS THE CLASS\r\nthis.pobresa = Number(pobresa),\r\nthis.desempleo = Number(desempleo),\r\nthis.poblacion = Number(poblacion),\r\nthis.anio = Number(anio),\r\nthis.color = {\r\n	front : colorf,\r\n	back : colorb\r\n         }, \r\n     makeCall = function(){\r\n     	console.log(\'funciono\');\r\n     }\r\n};\r\n\r\nfor (var i = 2007; i < 2020; i++) {\r\n let x = new ecuadorDataP (data1[0][`${i} [YR${i}]`],data1[1][`${i} [YR${i}]`],data1[2][`${i} [YR${i}]`],i)  \r\n EcuadorDataPdp.push(x); /// push data into the array of objects called EcuadorDataPdp \r\n\r\n} \r\n i got you ', ' ', 'create class dinamicamente'),
(37, 1, 2, '// Database connection settings \r\n $host = \'localhost\';\r\n $user = \'root\';\r\n $pass = \'\';\r\n $db = \'templates\';\r\n$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);', ' ', 'connect '),
(38, 1, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet neque, soluta libero\r\n nesciunt quibusdam inventore id, quis, quasi, adipisci ad illo rem beatae \r\nperferendis deserunt accusamus molestias possimus alias molestiae!', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet neque7, soluta libero\r\n nesciunt qui', 'lorem'),
(39, 1, 2, ' include \'conn.php\';\r\n$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);\r\n$sql= \"SELECT * FROM ingresos\";\r\n$result =mysqli_query($conn,$sql);\r\nif (mysqli_num_rows($result)>0) {\r\n	$output=\' \';\r\n	$output.=\' <here come tags> \';\r\n	while ($row = mysqli_fetch_assoc($result)) {\r\n		$output .= \'\r\n	<tagli> Sueldo <spanTag id=\"sueldo\">\' .$row[\"sueldo\"]. \'</spanTag></tagli>\r\n	 \';\r\n}\r\necho $output;\r\n}else{\r\n	echo \'Data not found\';\r\n}\r\n?>', ' ', 'get retrieve obtener'),
(40, 1, 2, '//Convert JSON string to Array  \r\n$someArray = json_decode($someJSON, true);\r\n  print_r($someArray);        // Dump all data of the Array\r\n  echo $someArray[0][\"name\"]; // Access Array data', ' PHP >= 5.2.0 features a function, json_decode, that decodes a JSON string into a PHP variable. By d', 'Convert JSON string to Array'),
(41, 1, 2, 'ALTER TABLE egresos\r\nADD fecha varchar(55); ', ' ', 'add a column'),
(42, 1, 2, ' $varAssingn = mysqli_real_escape_string($conn,$_POST[\'nameOftheInput\']);', ' ', 'get a var '),
(43, 1, 2, ' if (isset($_POST[\'Departamento\'])) {\r\n\r\ninclude \'conn.php\';\r\n\r\n$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);\r\n$Piso = mysqli_real_escape_string($conn,$_POST[\'Piso\']);\r\n$Departamento =  mysqli_real_escape_string($conn,$_POST[\'Departamento\']);\r\n$Edificio =  mysqli_real_escape_string($conn,$_POST[\'Edificio\']);\r\n$Referencia =  mysqli_real_escape_string($conn,$_POST[\'Referencia\']);\r\n	\r\n$misqldata = \" INSERT INTO Hospital (Piso, Departamento, Edificio,Referencia) VALUES\r\n (\'$Piso\',\'$Departamento\',\'$Edificio\', \'$Referencia\' );\";  \r\n	mysqli_query($conn, $misqldata);\r\n	\r\n} else{\r\n	header(\"Location: ../index.php\");\r\n	exit();\r\n\r\n}', ' ', 'insert send '),
(44, 1, 2, ' <?php \r\n$host = \"localhost\";\r\n$user = \"root\";\r\n$password = \"\";\r\n$dbname = \"ejersicios\";\r\n\r\n$dsn = \'mysql:host=\' . $host . \';dbname=\'. $dbname;\r\n// create PDO instanse \r\n$pdo = new PDO($dsn, $user ,$password);\r\n////\r\n\r\n$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_OBJ);\r\n///\r\n// PDO QUERY\r\n$stmt =  $pdo->query( \'SELECT * FROM ejersicios\');\r\n\r\n// while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {\r\n  	\r\n// 	echo $row[\'String1\'] . \'<br>\'; \r\n\r\n//   }  \r\n\r\nwhile ($row = $stmt->fetch(PDO::FETCH_OBJ)) { // get data as a object (PDO::FETCH_OBJ)	\r\n	echo $row->String1 . \'<br>\'; \r\n	$rows[] = $row; // concatenate the data to row \r\n  } ;\r\n\r\n   echo json_encode($rows); /// transform into a object \r\n ?>\r\n\r\n <script type=\"text/javascript\">\r\n 	\r\n 	let rows = <?php  echo json_encode($rows); ?>; /// tran\r\n 	console.log(rows);\r\n 	// let rowses = JSON.stringify(rows); /// convert a object into a string \r\n 	// console.log(rowses);\r\n </script>', ' ', 'object php to javascript object'),
(45, 1, 2, 'http://localhost/urlparameters/index.php?name=smael&age=33', ' (?) indicates that the parameters start \r\n(&) separates the parameters   /// ', 'parameters'),
(46, 1, 2, ' var urlArray = <?php echo \'[\"\' . implode(\'\", \"\', $phpArray) . \'\"]\' ?>;  ', ' ', 'array php to javascript '),
(47, 1, 2, ' while\r\n$rows[] = $row;  /// concatenear los datos a una nueva variable\r\nend while ///>>\r\n<script>\r\nlet tkl = <?php echo json_encode($rows) ?>;  transformar en object\r\n</script>', ' ', 'array to object javascript '),
(48, 1, 2, ' class Person { \r\n	 private $age = \"25\";\r\n	 private $last = \"Araque\";\r\n	 private $first = \"roberto\";\r\n\r\n	 public function metodo(){\r\n	  $a = $this->first;\r\n	  return $a;\r\n  }\r\n// print the class\r\n$person = new Person();\r\necho $person->metodo();', ' ', 'class'),
(49, 1, 2, 'class Person { \n	 protected $first = \"roberto\";\n	 // protected alows classes inside clases to acces to properties\n	 private $last = \"Araque\";\n	 private $age = \"25\"; \n// proterties and method goes here\n}\n\nclass Pet extends Person {\n     public function owner(){\n	  $a = $this->first;\n	  return $a;\n  }\n}  \n\n$person = new Pet();\necho $person->owner();', ' ', 'extend classes '),
(50, 1, 2, 'class Person { \n	public	$name;\n	public  $lastName;\n	public  $age;\n	/// methos\n	public function __construct($name, $lastName, $age){\n     $this->name  = $name;\n     $this->lastName  = $lastName;\n     $this->age  = $age ;\n\n	}\n	public function setName($name){\n	$this->name = $name; 	\n	}\n	\n}  \n$person1 = new Person(\'Roberto\',\'Velasco\',33);\necho $person1->lastName;\necho $person1->age;\n', ' ', 'class constructor '),
(51, 1, 2, 'class newClass { \r\n	public	$name;\r\n	public  $lastName;\r\n	public function __destructor(){\r\n		\r\n	}\r\n}\r\n\r\n$object = new newClass;\r\nunset($object);', ' ', 'delete object '),
(52, 1, 2, ' class newClass { \r\n	public	$name;\r\n	public  $lastName;\r\n	public  $age;\r\n        public static $religion = 666;\r\n	public static function setDrinkingAge($newDA){\r\n		self::$setDrinkingAge == $newDA;\r\n	}\r\n}', ' ', 'static class'),
(53, 1, 2, ' <?php \r\nspl_autoload_register(\'myAutoLoader\'); /// the parameter is the funcion inside quotes \r\n\r\nfunction myAutoLoader($className){ \r\n$path =\"classes/\";\r\n$extension = \'.class.php\';\r\n$fullPath = $path . $className . $extension;\r\nif (!file_exists($fullPath)) {\r\n return false;\r\n}\r\ninclude_once $fullPath;  \r\n}\r\n\r\n ?>\r\n<?php\r\ninclude \'include/autoLoader.inc.php\';  /// do not forget to include the file where the loader is\r\n?>', ' ', 'auto loader object '),
(54, 1, 2, '	 $getTotalrows = mysqli_fetch_assoc(mysqli_query($conn, \"SELECT count(*) as total_Rows FROM personal_finances_assets WHERE politic_id = $search\"));\r\n	 $totalRows = $getTotalrows[\'total_Rows\']; // this line is optional  ', ' ', 'get a single values mysql'),
(55, 1, 2, '$string = \'HOLA MUNDO\';\n \n echo <<<MYTEXT\n $string\nThis is a\ndemo message\nwith heredoc.\nMYTEXT;\n\n ', ' ', 'heredoc <<<'),
(56, 1, 2, 'echo  (($a > $b) ?  \" $a es mayor a $b\" : \"$b es mayor a $a\" ) ;\r\ncerrar con parentisis ternary operator para expecificar su uso\r\n\r\n(Condition) ? (Statement1) : (Statement2);\r\n                          true                 false', ' ', 'ternary operator '),
(57, 1, 2, ' @$variable = \'si algun error se genera no sera mostrado automaticamente\';\r\nphp_errormsg;  /// ahi estara los errores que se escondan. ', ' (@)', 'error suppression operator '),
(67, 1, 3, '    #navIconStyle ul{\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n    }\r\n    #navIconStyle ul li a{\r\n        background-color: pink;\r\n        border-radius: 10px;\r\n        padding: 5px;\r\n        margin: 0px 2px;\r\n    }', ' display flex with justify and alingment at the center', 'flex center'),
(68, 1, 3, '   #navIconStyle ul{\r\n        display: flex;\r\n        justify-content: center;\r\n        align-items: center;\r\n    }\r\n    #navIconStyle ul li a{\r\n        background-color: #9CE7FF;\r\n        border-radius: 10px;\r\n        padding: 5px;\r\n        margin: 0px 2px;\r\n    }\r\n    #navIconStyle ul li a:hover{\r\n        background-color: #0F61CC;\r\n        color: #9CE7FF;\r\n        text-decoration: none;\r\n    };', ' basic nav to work on', 'nav basic'),
(70, 1, 3, ' /* \r\n  ##Device = Desktops\r\n  ##Screen = 1281px to higher resolution desktops\r\n*/\r\n\r\n@media (min-width: 1281px) {\r\n  \r\n  //CSS\r\n  \r\n}\r\n\r\n/* \r\n  ##Device = Laptops, Desktops\r\n  ##Screen = B/w 1025px to 1280px\r\n*/\r\n\r\n@media (min-width: 1025px) and (max-width: 1280px) {\r\n  \r\n  //CSS\r\n  \r\n}\r\n\r\n/* \r\n  ##Device = Tablets, Ipads (portrait)\r\n  ##Screen = B/w 768px to 1024px\r\n*/\r\n\r\n@media (min-width: 768px) and (max-width: 1024px) {\r\n  \r\n  //CSS\r\n  \r\n}\r\n\r\n/* \r\n  ##Device = Tablets, Ipads (landscape)\r\n  ##Screen = B/w 768px to 1024px\r\n*/\r\n\r\n@media (min-width: 768px) and (max-width: 1024px) and (orientation: landscape) {\r\n  \r\n  //CSS\r\n  \r\n}\r\n\r\n/* \r\n  ##Device = Low Resolution Tablets, Mobiles (Landscape)\r\n  ##Screen = B/w 481px to 767px\r\n*/\r\n\r\n@media (min-width: 481px) and (max-width: 767px) {\r\n  \r\n  //CSS\r\n  \r\n}\r\n\r\n/* \r\n  ##Device = Most of the Smartphones Mobiles (Portrait)\r\n  ##Screen = B/w 320px to 479px\r\n*/\r\n\r\n@media (min-width: 320px) and (max-width: 480px) {\r\n  \r\n  //CSS\r\n  \r\n}', ' ', 'query devices @media '),
(71, 1, 3, ' .next_container  :not(.form-check) {\r\n	text-align: center;\r\n  }', ' ', 'negacion not except'),
(74, 1, 4, 'DROP TABLE IF EXISTS Prueba;\n\nCREATE TABLE if not EXISTS Prueba (\n  `ID` int NOT NULL PRIMARY KEY AUTO_INCREMENT,\n  `String1` varchar(1000) NOT NULL,\n  `String2` varchar(1000) NOT NULL,\n  `String3` varchar(1000) NOT NULL,\n  `Numero1` int(55) NOT NULL,\n  `Numero2` int(55) NOT NULL,\n  `Numero3` int(55) NOT NULL\n) engine = InnoDB ;\n\n', ' ', 'create table'),
(75, 1, 4, 'INSERT INTO tableName ( \'String1\', \'String2\',\'String3\',\'Numero1\',\'Numero2\',\'Numero3\') VALUES\n (\'string1\', \'string2\',\'string3\',1,2,3);  ', ' This insert 3 strings and 3 numbers into a table ', 'insert '),
(76, 1, 4, ' ALTER TABLE table-name\r\nADD column-name varchar(1000);', ' ', 'add a column to a table'),
(77, 1, 4, '$sqlSumEgresos= \"SELECT (SUM(renta)+SUM(apartment)+SUM(tc12)+SUM(tc8)) AS Total FROM egresos\";\r\n$resultEgresos =mysqli_query($conn,$sqlSumEgresos);\r\n$rowEgresos = mysqli_fetch_assoc($resultEgresos); \r\n////\r\n< li> Resultado < span id=\"Resultado\">\' .$rowEgresos[\"Total\"]. \'< /span>< / li>', ' Shows the result of a sum of all columns of a table . This code need the if and while to fetch\r\nthe result in correct order ', 'sum columns '),
(78, 1, 4, ' ALTER TABLE table-name\r\nADD CONSTRAINT PRIMARY KEY (ID);', ' add a primary key without auto increment  ', 'add primary key '),
(79, 1, 4, ' ALTER TABLE prueba CHANGE Numero4 Numero4 DECIMAL(6,2);', ' ', 'change column name '),
(80, 1, 4, 'SELECT colum-name AS \"alias\" , another-ColumName  FROM table-Name;  /// las comillas son para que no aparescan como mayusculas en los resultados\n SELECT Numero4 FROM prueba ORDER BY ID DESC LIMIT 1 \n              from          tablename\n             where         condition\n          group by       group_condition\n         HAVING         group_condition\n        ORDER BY       column_name  ', '', 'select last limit '),
(81, 1, 4, ' UPDATE tableName\r\nSET columnName = 666\r\nWHERE ID = 2;', ' ', 'update'),
(82, 1, 4, 'SELECT (column-name + column-name ) / table-name FROM table-name  AS result', ' ccc', 'aritmetica suma resta '),
(83, 1, 4, 'SELECT DISTINCT  column-name FROM table-name; ', ' solo muestra los valores distintos ', 'DISTINCT'),
(84, 1, 4, 'SELECT column-name || \' text-to-be-added \'  || column-name\r\n\r\nFROM table-name; ', ' ss', 'concatenar'),
(85, 1, 4, ' 1 DECIMAL(size, d)', '  1 An exact fixed-point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter. The maximum number for size is 65. The maximum number for d is 30. The default value \r\n    for size is 10. The default value for d is 0.', 'type'),
(86, 1, 4, 'CREATE TABLE t1 (\n  i     INT DEFAULT -1,\n  c     VARCHAR(10) DEFAULT \'\',\n  price DOUBLE(16,2) DEFAULT \'0.00\',\n tiempo DATE default CURRENT_TIMESTAMP\n); ', ' ', 'default'),
(87, 1, 4, 'CONSTRAINT CHK_state CHECK ( state = \'CA\' OR state = \'TX\') ', ' The CHECK constraint is used to limit the value range that can be placed in a column.\r\n\r\nIf you define a CHECK constraint on a single column it allows only certain values for this column.\r\n\r\nIf you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.\r\n\r\n', 'check'),
(88, 1, 4, ' ALTER TABLE table_name\r\nRENAME TO new_table_name;\r\n\r\nALTER TABLE table_name\r\nCHANGE COLUMN old_name TO new_name;', ' cambia el nombre de la tabla \r\ncambia el nombre de la columna', 'table name '),
(89, 1, 4, ' SELECT if( movie_title is null, \"\", movie_title ), if(movie_title is null , \'\', release_date),  \r\nif(movie_title is null ,concat(\'El total es \',  count(movie_title) ), count(movie_title) ) ,\r\n  if (movie_title is null , \'  \', genre_1),  if(movie_title is null , \' \', director_1) FROM movies1 group by release_date desc, movie_title  with rollup ;', ' d', 'if and null desc rollup'),
(90, 1, 4, ' SELECT OrderID, Quantity,\r\nCASE\r\n    WHEN Quantity > 30 THEN \"The quantity is greater than 30\"\r\n    WHEN Quantity = 30 THEN \"The quantity is 30\"\r\n    ELSE \"The quantity is under 30\"\r\nEND\r\nFROM OrderDetails;', 'La instrucción CASE pasa por condiciones y devuelve un valor cuando se cumple la primera condición (como una instrucción IF-THEN-ELSE). Entonces, una vez que una condición es verdadera, dejará de leer y devolverá el resultado.\r\nSi no se cumple ninguna condición, devolverá el valor de la cláusula ELSE.\r\nSi no hay una parte ELSE y ninguna condición es verdadera, devuelve NULL.', 'case '),
(91, 1, 4, 'CREATE  TABLE copy_actors \r\nAS (SELECT * FROM actors)\r\n ', ' crea la copia de una tabla', 'copy table'),
(92, 1, 4, 'INSERT INTO sales_reps(id, name, salary, commission_pct)\r\nSELECT employee_id, last_name, salary, commission_pct\r\nFROM employees\r\nWHERE job_idLIKE \'%REP%\';', ' ', 'insert using a subquery'),
(93, 1, 4, ' INSERT INTO sales_reps\r\nSELECT *\r\nFROM employees;', ' ', 'insert all data of all rows'),
(94, 1, 4, ' ', ' ', 'create'),
(95, 1, 4, 'CREATE TABLE t1 (\n  -- literal defaults\n  i INT         DEFAULT 0,\n  c VARCHAR(10) DEFAULT \'\',-- expression defaults\n  f FLOAT       DEFAULT (RAND() * RAND()),\n  b BINARY(16)  DEFAULT (UUID_TO_BIN(UUID())),\n  d DATE        DEFAULT (CURRENT_DATE + INTERVAL 1 YEAR),\n  p POINT       DEFAULT (Point(0,0)),\n  j JSON        DEFAULT (JSON_ARRAY())\n); ', ' Create a default value', 'default'),
(96, 1, 4, ' UPDATE table_name\r\nSET column_name = \'Roberto\' WHERE id =  1;', ' ', 'update row'),
(97, 1, 4, ' select * FROM mysql.user;', ' show the list of users ', 'list of users'),
(98, 1, 4, ' SELECT \r\n  TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME\r\nFROM\r\n  INFORMATION_SCHEMA.KEY_COLUMN_USAGE\r\n', ' see the primary keys ', 'see constraints'),
(99, 1, 4, ' CURRENT_TIMESTAMP', ' ', 'date stamp'),
(100, 1, 4, ' ', ' ', 'create'),
(101, 1, 4, ' select  * from information_schema.tables ;', ' ', 'dictionary'),
(102, 1, 4, 'ALTER TABLE table_name\r\n MODIFY column_name varchar(50) not null ; ', ' ', 'modify'),
(103, 1, 4, ' ALTER TABLE table_name AUTO_INCREMENT = start_value;\r\n', ' ', 'auto increment start value'),
(104, 1, 4, ' ALTER TABLE suppliers AUTO_INCREMENT = 1; \n/// see the auto increment variable\n SHOW VARIABLES LIKE \'auto_inc%\'', ' ', 'auto increment change'),
(105, 1, 4, 'ALTER TABLE \"table_name\" DROP \"column_name\"; ', ' ', 'drop column delete'),
(106, 1, 4, 'Create user hfc\r\nidentified BY  password;  ', ' ', 'create user'),
(107, 1, 4, ' C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin /// path for the . exe\r\n-u user -p \r\n/// type the password', ' ', 'command line conn user'),
(108, 1, 4, 'show grants for user_name; ', ' ', 'show grants'),
(109, 1, 4, 'show grants for user_name;\r\nshow grants for current_user; ', ' ', 'grants show'),
(110, 1, 4, 'CREATE VIEW    view_name\n AS \nSELECT * FROM assets where politic_id = 2; // query\nWITH READ ONLY  ///  [ optional ] \n\n\n\n SELECT * FROM INFORMATION_SCHEMA.VIEWS;  // where is the view  ', ' A view is a virtual table ', 'create view show view'),
(111, 1, 4, 'RENAME TABLE old_name\r\nTO new_name; ', ' ', 'rename view'),
(112, 1, 4, ' ALTER TABLE table_name ALTER column_name SET DEFAULT CURRENT_TIME();', ' ', 'update default '),
(137, 1, 5, ' es solo una pruba nose si sirva', ' es solo una prueba', 'try'),
(138, 1, 5, 'start .  ', ' ', 'open folder'),
(139, 1, 5, ' rm filename.txt', ' ', 'remove a file '),
(140, 1, 5, ' cd \\', ' ', 'return to c:\\'),
(141, 1, 5, 'd: ', 'place the letter of the disk follow by dos puntos ', 'change disk'),
(142, 1, 5, 'md \"nameoftheDirectory\" ', ' ', 'create make a directory'),
(143, 1, 5, ' echo some-text  > filename.txt', ' ', 'create a file '),
(144, 1, 5, ' ftp domain_name\nusername\npassword   / / will not be visible  \nlcd C:\\Users\\Gnose\\OneDrive\\Escritorio\\breve   \n', ' ', 'ftp connection remote'),
(152, 1, 6, ' git commit --amend -m \"an updated commit message\"', ' The git commit --amend command is a convenient way to modify the most recent commit.', 'git commit ammend recent last '),
(153, 1, 6, ' $ git reset -- filename.txt', ' unstage a specific file ', 'unstage reset'),
(154, 1, 6, ' git checkout  filename.txt', 'Undo any change made in a file  ', 'undo changes in a single file '),
(155, 1, 6, ' git init ', ' The git init command creates a new Git repository. It can be used to convert an existing, unversion', 'start  git repository init '),
(156, 1, 6, ' git config --global user.name \'username\'\r\ngit config --global user.email email\'', ' ', 'config email user.name use.email '),
(157, 1, 6, ' git add filename', ' ', 'añadir add to the stage area'),
(158, 1, 6, ' git rm --catched filename', ' git rm [-f | --force] [-n] [-r] [--cached] [--ignore-unmatch]\r\n	  [--quiet] [--pathspec-from-file=<', 'remove form stage area'),
(159, 1, 6, 'git add filename // add the file name mentioned\r\ngit add * .html    // add any file with that extention \r\ngit add .  /// add all the files in the directory', ' ', 'git add'),
(160, 1, 6, 'git commit -a    /// Commits a snapshot of all changes in the working directory. Only modifications to tracked files are included.\n git commit -m \"commit message\" //  Creates a commit with a passed commit message. By default, git commit opens the locally configured text editor causing a commit message to be entered.\ngit commit -am \"commit message\" ///  Combines the -a and -m options for creating a commit for all the staged changes and taking an inline commit message.\ngit commit --amend --no-edit  /// not changed the message\ngit commit --amend ///   Modifies the last commit. Staged changes are added to the previous commit. This command opens the system\'s configured text editor and changes the previously specified commit message. \n ', ' ', 'git commit'),
(161, 1, 6, 'touch  .gitignore /// create the file first\r\n in that file put the files that you want to be ignored \r\n/forlderName  /// to ignore a entire folder \r\n* .txt /// ignore all the files with that extention ', ' ', 'git ignore '),
(162, 1, 6, ' git branch  nameOftheBranch   /// create a branch \r\ngit checkout nameOfTheBranch   // to change the branch usually from the master  \r\ndo not forge to add and commit the changes that have been made \r\n', ' ', 'git branch '),
(163, 1, 6, ' git remote \r\ngit remote add origin https://github.com/skitliv/indexphp\r\ngit push -u origin master    /// push the data into git hub cloud put the name of the branch if is neccesary\r\n', ' ', 'git push '),
(164, 1, 6, ' git clone  https://github.com/skitliv/indexphp.git \r\n', ' ', 'git clone download '),
(165, 1, 6, ' git clone  https://github.com/skitliv/indexphp.git \r\n', ' ', 'git clone download '),
(166, 1, 6, ' git clone  https://github.com/skitliv/indexphp.git \r\n', ' ', 'git clone download '),
(167, 1, 6, 'scp >>> :wq  ', ' ', 'get out'),
(168, 1, 6, ' 1- git branch -a  ', ' 1- show all branchest ', 'show branchs'),
(169, 1, 6, ' git branch -m <new_name> /// current branch name ', ' ', 'change branch name'),
(170, 1, 6, ' git reset HEAD --hard\r\ngit clean -fd // becarefull', ' ', 'git reset changes since last commit '),
(171, 1, 6, 'echo some-text  someText > filename.txt ', ' ', 'create a file with text'),
(172, 2, 6, ' git rm -rf --cached .\r\ngit add .', ' ', 'update git ignore not working'),
(173, 1, 6, ' //Create a New Branch\r\ngit checkout -b [name_of_your_new_branch]', ' ', 'create branch '),
(178, 1, 4, 'si asi es ', 'ajjaj ', 'Es una prueba nomas'),
(181, 2, 3, ' sdfdsf', ' sdfdas', 'sdf'),
(183, 2, 2, 'Funiona ', 'sdlkfj ', 'fucniona'),
(193, 0, 0, 'something', '', ''),
(194, 0, 0, 'test', '', ''),
(195, 0, 0, 'test', '', ''),
(202, 1, 10, 'A =  π * R  ^2', ' Area es igual a Pi por el radio a la segunda potencia', 'circle area formula'),
(203, 1, 10, 'd = 2 r ', 'diametro es igual a \r\n2 multiplicado por radio ', 'Circle Diameter');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlenguajes`
--

CREATE TABLE `userlenguajes` (
  `ID` int(11) NOT NULL,
  `IDuser` int(11) NOT NULL,
  `Idlenguaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `userlenguajes`
--

INSERT INTO `userlenguajes` (`ID`, `IDuser`, `Idlenguaje`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL DEFAULT 0,
  `usersName` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `usersUid` varchar(128) NOT NULL,
  `usersPwd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `usersUid`, `usersPwd`) VALUES
(1, 'Roberto ', 'skitliv733@gmail.com', 'tekila', '$2y$10$f.ZM7aiuSSjyLEh4NWFOtOquF886IKFGU8DterBZ09Jqh09qmMH/m'),
(2, 'zahid', 'davisrobert8@hotmail.com', 'zahid', '$2y$10$UkoLdfnxOjcWfZM6ECnTR.kzl0wkXSUFyaE/zI/BRcM0seEBFAI6K');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDuser` int(11) NOT NULL,
  `email` varchar(33) NOT NULL,
  `nombre` varchar(33) NOT NULL,
  `apellido` varchar(33) NOT NULL,
  `password` int(55) NOT NULL,
  `profileImage` varchar(66) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDuser`, `email`, `nombre`, `apellido`, `password`, `profileImage`) VALUES
(1, 'skitliv733@gmail.com', 'Roberto', 'Araque', 666, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`ID`);

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
-- Indices de la tabla `d3js`
--
ALTER TABLE `d3js`
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
-- Indices de la tabla `lenguajes`
--
ALTER TABLE `lenguajes`
  ADD PRIMARY KEY (`Idlenguaje`);

--
-- Indices de la tabla `math`
--
ALTER TABLE `math`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id_media`);

--
-- Indices de la tabla `mysql`
--
ALTER TABLE `mysql`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `npm`
--
ALTER TABLE `npm`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `oracle`
--
ALTER TABLE `oracle`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `php`
--
ALTER TABLE `php`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `phyton`
--
ALTER TABLE `phyton`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `politics`
--
ALTER TABLE `politics`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `r`
--
ALTER TABLE `r`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `reactjs`
--
ALTER TABLE `reactjs`
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
-- Indices de la tabla `sublime`
--
ALTER TABLE `sublime`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usercodes`
--
ALTER TABLE `usercodes`
  ADD PRIMARY KEY (`IDuserCodes`);

--
-- Indices de la tabla `userlenguajes`
--
ALTER TABLE `userlenguajes`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDuser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `api`
--
ALTER TABLE `api`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `bootstrap`
--
ALTER TABLE `bootstrap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `command`
--
ALTER TABLE `command`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `css`
--
ALTER TABLE `css`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `d3js`
--
ALTER TABLE `d3js`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `git`
--
ALTER TABLE `git`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `javascript`
--
ALTER TABLE `javascript`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `lenguajes`
--
ALTER TABLE `lenguajes`
  MODIFY `Idlenguaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `math`
--
ALTER TABLE `math`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `mysql`
--
ALTER TABLE `mysql`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `npm`
--
ALTER TABLE `npm`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `oracle`
--
ALTER TABLE `oracle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `php`
--
ALTER TABLE `php`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `phyton`
--
ALTER TABLE `phyton`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `politics`
--
ALTER TABLE `politics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `r`
--
ALTER TABLE `r`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reactjs`
--
ALTER TABLE `reactjs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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

--
-- AUTO_INCREMENT de la tabla `sublime`
--
ALTER TABLE `sublime`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usercodes`
--
ALTER TABLE `usercodes`
  MODIFY `IDuserCodes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT de la tabla `userlenguajes`
--
ALTER TABLE `userlenguajes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IDuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
