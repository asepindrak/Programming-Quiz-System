-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2023 at 04:53 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `last_login`) VALUES
(1, 'admin', '12345', '2023-08-31 18:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `correct` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `quiz_id`, `question_id`, `answer`, `correct`) VALUES
(1, 1, 1, 'Object-Oriented', '1'),
(2, 1, 1, 'Object-Based', '0'),
(3, 1, 1, 'Procedural', '0'),
(4, 1, 1, 'None of the above', '0'),
(5, 1, 2, 'Both A and B', '1'),
(6, 1, 2, 'var', '0'),
(7, 1, 2, 'let', '0'),
(8, 1, 2, 'None of the above', '0'),
(9, 1, 3, 'Both A and B', '1'),
(10, 1, 3, 'getElementbyId()', '0'),
(11, 1, 3, 'getElementsByClassName()', '0'),
(12, 1, 3, 'None of the above', '0'),
(13, 1, 4, 'Ignores the statements', '1'),
(14, 1, 4, 'Throws an error', '0'),
(15, 1, 4, 'Gives a warning', '0'),
(16, 1, 4, 'None of the above', '0'),
(17, 1, 5, 'All of the above', '1'),
(18, 1, 5, 'document.write()', '0'),
(19, 1, 5, 'console.log()', '0'),
(20, 1, 5, 'window.alert()', '0'),
(21, 1, 6, 'const', '1'),
(22, 1, 6, 'var', '0'),
(23, 1, 6, 'let', '0'),
(24, 1, 6, 'constant', '0'),
(25, 1, 7, '59', '1'),
(26, 1, 7, 'Compilation Error', '0'),
(27, 1, 7, '14', '0'),
(28, 1, 7, 'Runtime Error', '0'),
(29, 1, 8, 'al', '1'),
(30, 1, 8, 'ale', '0'),
(31, 1, 8, 'cal', '0'),
(32, 1, 8, 'caler', '0'),
(33, 1, 9, '20', '1'),
(34, 1, 9, 'x+y', '0'),
(35, 1, 9, '128', '0'),
(36, 1, 9, 'None of the above', '0'),
(37, 1, 10, 'Both the datatype and the result of the expression are compared.', '1'),
(38, 1, 10, 'Only the datatype of the expression is compared.', '0'),
(39, 1, 10, 'Only the value of the expression is compared.', '0'),
(40, 1, 10, 'None of the above.', '0'),
(41, 1, 11, 'in', '1'),
(42, 1, 11, 'is in', '0'),
(43, 1, 11, 'exists', '0'),
(44, 1, 11, 'lies', '0'),
(45, 1, 12, 'The contents are displayed by non-JS-based browsers.', '1'),
(46, 1, 12, 'Clears all the cookies and cache.', '0'),
(47, 1, 12, 'Both A and B.', '0'),
(48, 1, 12, 'None of the above.', '0'),
(49, 1, 13, '2431', '1'),
(50, 1, 13, '1234', '0'),
(51, 1, 13, '2341', '0'),
(52, 1, 13, '4321', '0'),
(53, 1, 14, '21', '1'),
(54, 1, 14, '6', '0'),
(55, 1, 14, 'NaN', '0'),
(56, 1, 14, 'None of the above', '0'),
(57, 1, 15, '[111, 44, 1, 22]', '1'),
(58, 1, 15, '[44, 1, 22, 111]', '0'),
(59, 1, 15, '[111, 44, 1, 22]', '0'),
(60, 1, 15, '[1, 22, 111, 44]', '0'),
(61, 1, 16, '9', '1'),
(62, 1, 16, '81', '0'),
(63, 1, 16, 'Error', '0'),
(64, 1, 16, '0', '0'),
(65, 1, 17, 'Object', '1'),
(66, 1, 17, 'Boolean', '0'),
(67, 1, 17, 'Undefined', '0'),
(68, 1, 17, 'Integer', '0'),
(69, 1, 18, '4 10 18', '1'),
(70, 1, 18, '1 2 3', '0'),
(71, 1, 18, '1 4 7', '0'),
(72, 1, 18, 'None of the above', '0'),
(73, 1, 19, 'It acts as a breakpoint in a program.', '1'),
(74, 1, 19, 'It will debug all the errors in the program at runtime.', '0'),
(75, 1, 19, 'It will debug error in the current statement if any.', '0'),
(76, 1, 19, 'All of the above', '0'),
(77, 1, 20, '-Infinity Infinity', '1'),
(78, 1, 20, 'Infinity -Infinity', '0'),
(79, 1, 20, 'Infinity Infinity', '0'),
(80, 1, 20, '-Infinity -Infinity', '0'),
(81, 1, 21, 'true false', '1'),
(82, 1, 21, 'false true', '0'),
(83, 1, 21, 'true true', '0'),
(84, 1, 21, 'false false', '0'),
(85, 1, 22, '5', '1'),
(86, 1, 22, '3', '0'),
(87, 1, 22, '0', '0'),
(88, 1, 22, 'Error', '0'),
(89, 1, 23, 'false', '1'),
(90, 1, 23, 'true', '0'),
(91, 1, 23, 'undefined', '0'),
(92, 1, 23, 'Error', '0'),
(93, 1, 24, 'Number', '1'),
(94, 1, 24, 'Object', '0'),
(95, 1, 24, 'String', '0'),
(96, 1, 24, 'None of the above', '0'),
(97, 1, 25, 'Returns a localized string representation of an object.', '1'),
(98, 1, 25, 'Returns a localised object representation.', '0'),
(99, 1, 25, 'Returns a parsed string.', '0'),
(100, 1, 25, 'None of the above.', '0'),
(101, 1, 26, 'Object Serialization', '1'),
(102, 1, 26, 'Object Encapsulation', '0'),
(103, 1, 26, 'Object Inheritance', '0'),
(104, 1, 26, 'None of the above', '0'),
(105, 1, 27, 'stringify()', '1'),
(106, 1, 27, 'parse()', '0'),
(107, 1, 27, 'convert()', '0'),
(108, 1, 27, 'None of the above', '0'),
(109, 1, 28, 'Class, prototype, object\'s extensible flag.', '1'),
(110, 1, 28, 'Class, prototype, objects\' parameters.', '0'),
(111, 1, 28, 'Class, parameters, object\'s extensible flag.', '0'),
(112, 1, 28, 'Classes, Native object, parameters', '0'),
(113, 1, 29, '6', '1'),
(114, 1, 29, '1', '0'),
(115, 1, 29, '2', '0'),
(116, 1, 29, 'None of the above', '0'),
(117, 1, 30, '3, 4', '1'),
(118, 1, 30, '2, 3', '0'),
(119, 1, 30, '3, 4, 5', '0'),
(120, 1, 30, '2, 3, 4', '0'),
(121, 1, 31, '123 NaN', '1'),
(122, 1, 31, '123Hello Hello123', '0'),
(123, 1, 31, 'NaN NaN', '0'),
(124, 1, 31, '123 123', '0'),
(125, 1, 32, 'All of the above', '1'),
(126, 1, 32, 'Variables', '0'),
(127, 1, 32, 'Functions', '0'),
(128, 1, 32, 'Objects', '0'),
(129, 1, 33, 'Cassandra', '1'),
(130, 1, 33, 'Node', '0'),
(131, 1, 33, 'Vue', '0'),
(132, 1, 33, 'React', '0'),
(133, 1, 34, 'NaN', '1'),
(134, 1, 34, '47', '0'),
(135, 1, 34, '0', '0'),
(136, 1, 34, 'None of the above', '0'),
(137, 1, 35, 'async', '1'),
(138, 1, 35, 'await', '0'),
(139, 1, 35, 'setTimeout', '0'),
(140, 1, 35, 'None of the above', '0'),
(141, 1, 36, 'clearInterval', '1'),
(142, 1, 36, 'clearTimer', '0'),
(143, 1, 36, 'intervalOver', '0'),
(144, 1, 36, 'None of the above', '0'),
(145, 1, 37, '11 Hello6 [object Object]6', '1'),
(146, 1, 37, '11 NaN NaN', '0'),
(147, 1, 37, '11 NaN [object Object]', '0'),
(148, 1, 37, 'None of the above', '0'),
(149, 1, 38, 'Their references are compared', '1'),
(150, 1, 38, 'The contents of the objects are compared', '0'),
(151, 1, 38, 'Both A and B', '0'),
(152, 1, 38, 'None of the above', '0'),
(153, 1, 39, 'It is used to spread iterables to individual elements', '1'),
(154, 1, 39, 'It is used to describe a datatype of undefined size', '0'),
(155, 1, 39, 'No such operator exists', '0'),
(156, 1, 39, 'None of the above', '0'),
(157, 1, 40, 'Undefined Undefined Undefined', '1'),
(158, 1, 40, '0 1 2', '0'),
(159, 1, 40, '0 Undefined Undefined', '0'),
(160, 1, 40, 'None of the above', '0'),
(161, 1, 41, 'YES', '1'),
(162, 1, 41, 'NO', '0'),
(163, 1, 41, 'Syntax Error', '0'),
(164, 1, 41, 'None of the above', '0'),
(165, 1, 42, '7', '1'),
(166, 1, 42, '8', '0'),
(167, 1, 42, '0', '0'),
(168, 1, 42, '1', '0'),
(169, 1, 43, '4', '1'),
(170, 1, 43, '5', '0'),
(171, 1, 43, '6', '0'),
(172, 1, 43, '3', '0'),
(173, 1, 44, 'false', '1'),
(174, 1, 44, 'true', '0'),
(175, 1, 44, 'Undefined', '0'),
(176, 1, 44, 'None of the above', '0'),
(177, 1, 45, 'Nothing happens', '1'),
(178, 1, 45, 'Syntax Error', '0'),
(179, 1, 45, 'â€œI am a dogâ€ gets printed', '0'),
(180, 1, 45, 'ReferenceError', '0'),
(181, 1, 46, '//', '1'),
(182, 1, 46, '/* */', '0'),
(183, 1, 46, '#', '0'),
(184, 1, 46, '$$', '0'),
(185, 1, 47, 'Base Object', '1'),
(186, 1, 47, 'All objects have a prototype', '0'),
(187, 1, 47, 'None of the objects have a prototype', '0'),
(188, 1, 47, 'None of the above', '0'),
(193, 1, 48, 'Object', '1'),
(194, 1, 48, 'NaN', '0'),
(195, 1, 48, 'Number', '0'),
(196, 1, 48, 'Array', '0'),
(197, 1, 49, '{first: 50, second: 30}', '1'),
(198, 1, 49, '{first: 20, second: 30}', '0'),
(199, 1, 49, '{first: 20, second: 30, first: 50}', '0'),
(200, 1, 49, 'Syntax Error', '0'),
(201, 1, 50, 'All of the above', '1'),
(202, 1, 50, 'Date', '0'),
(203, 1, 50, 'FileUpload', '0'),
(204, 1, 50, 'Function', '0');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `code` varchar(9999) NOT NULL,
  `code_type` varchar(30) NOT NULL,
  `type` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question_id`, `question`, `code`, `code_type`, `type`) VALUES
(1, 1, 1, 'Javascript is an _______ language?', '', '', 'mc'),
(2, 1, 2, 'Which of the following keywords is used to define a variable in Javascript?', '', '', 'mc'),
(3, 1, 3, 'Which of the following methods is used to access HTML elements using Javascript?', '', '', 'mc'),
(4, 1, 4, 'Upon encountering empty statements, what does the Javascript Interpreter do?', '', '', 'mc'),
(5, 1, 5, 'Which of the following methods can be used to display data in some form using Javascript?', '', '', 'mc'),
(6, 1, 6, 'How can a datatype be declared to be a constant type?', '', '', 'mc'),
(7, 1, 7, 'What will be the output of the following code snippet?', '&lt;script type=&quot;text/javascript&quot;&gt;\r\na = 5 + &quot;9&quot;;\r\ndocument.write(a);\r\n&lt;/script&gt;', 'js', 'mc'),
(8, 1, 8, 'What will be the output of the following code snippet?', '&lt;script type=&quot;text/javascript&quot; language=&quot;javascript&quot;&gt;\r\n  \r\nvar a = &quot;Scaler&quot;;\r\nvar result = a.substring(2, 4);\r\ndocument.write(result);\r\n  \r\n&lt;/script&gt;', 'js', 'mc'),
(9, 1, 9, 'What will be the output of the following code snippet?', '&lt;script type=&quot;text/javascript&quot; language=&quot;javascript&quot;&gt;\r\n \r\nvar x=12;\r\nvar y=8;\r\nvar res=eval(&quot;x+y&quot;);\r\ndocument.write(res);\r\n \r\n&lt;/script&gt;', 'js', 'mc'),
(10, 1, 10, 'When the switch statement matches the expression with the given labels, how is the comparison done?', '', '', 'mc'),
(11, 1, 11, 'What keyword is used to check whether a given property is valid or not?', '', '', 'mc'),
(12, 1, 12, 'What is the use of the &lt;noscript&gt; tag in Javascript?', '', '', 'mc'),
(13, 1, 13, ' \r\nWhat will be the output of the following code snippet?', '(function(){\r\n setTimeout(()=&gt; console.log(1),2000);\r\n console.log(2);\r\n setTimeout(()=&gt; console.log(3),0);\r\n console.log(4);\r\n})();', 'js', 'mc'),
(14, 1, 14, 'What will be the output of the following code snippet?', '(function(a){\r\n return (function(){\r\n   console.log(a);\r\n   a = 6;\r\n })()\r\n})(21);', 'js', 'mc'),
(15, 1, 15, 'What will be the output of the following code snippet?', 'function solve(arr, rotations){\r\n if(rotations == 0) return arr;\r\n for(let i = 0; i &lt; rotations; i++){\r\n   let element = arr.pop();\r\n   arr.unshift(element);\r\n }\r\n return arr;\r\n}\r\n// solve([44, 1, 22, 111], 5);', 'js', 'mc'),
(16, 1, 16, 'What will be the output for the following code snippet?', '&lt;p id=&quot;example&quot;&gt;&lt;/p&gt;  \r\n&lt;script&gt;  \r\nfunction Func()  \r\n{  \r\ndocument.getElementById(&quot;example&quot;).innerHTML=Math.sqrt(81);  \r\n}  \r\n&lt;/script&gt;', 'js', 'mc'),
(17, 1, 17, 'When an operatorâ€™s value is NULL, the typeof returned by the unary operator is:', '', '', 'mc'),
(18, 1, 18, 'What will be the output of the following code snippet?', 'var a = 1;  \r\nvar b = 0;  \r\nwhile (a &lt;= 3)  \r\n{  \r\n   a++;  \r\n   b += a * 2;  \r\n   print(b);\r\n}', 'js', 'mc'),
(19, 1, 19, 'What does the Javascript â€œdebuggerâ€ statement do?', '', '', 'mc'),
(20, 1, 20, 'What will be the output of the following code snippet?', 'var a = Math.max();\r\nvar b = Math.min();\r\nprint(a);\r\nprint(b);', 'js', 'mc'),
(21, 1, 21, 'What will be the output of the following code snippet?', 'var a = Math.max() &lt; Math.min();\r\nvar b = Math.max() &gt; Math.min();\r\nprint(a);\r\nprint(b);', 'js', 'mc'),
(22, 1, 22, 'What will be the output of the following code snippet?', 'var a = true + true + true * 3;\r\nprint(a)', 'js', 'mc'),
(23, 1, 23, 'What is the output of the following code snippet?', 'print(NaN === NaN);', 'js', 'mc'),
(24, 1, 24, 'What will be the output of the following code snippet?', 'print(typeof(NaN));', 'js', 'mc'),
(25, 1, 25, ' \r\nWhat does the â€˜toLocateString()â€™ method do in JS?', '', '', 'mc'),
(26, 1, 26, 'The process in which an object or data structure is translated into a format suitable for transferral over a network, or storage is called?', '', '', 'mc'),
(27, 1, 27, 'Which function is used to serialize an object into a JSON string in Javascript?', '', '', 'mc'),
(28, 1, 28, 'The 3 basic object attributes in Javascript are:', '', '', 'mc'),
(29, 1, 29, '\r\nWhat will be the output of the following code snippet?', 'let sum = 0; \r\nconst a = [1, 2, 3];\r\na.forEach(getSum);\r\nprint(sum);\r\nfunction getSum(ele) {\r\n   sum += ele;\r\n}', 'js', 'mc'),
(30, 1, 30, 'What will be the output of the following code snippet?', 'a = [1, 2, 3, 4, 5];\r\nprint(a.slice(2, 4));', 'js', 'mc'),
(31, 1, 31, 'What will be the output of the following code snippet?', 'print(parseInt(&quot;123Hello&quot;));\r\nprint(parseInt(&quot;Hello123&quot;));', 'js', 'mc'),
(32, 1, 32, 'Which of the following are closures in Javascript?', '', '', 'mc'),
(33, 1, 33, 'Which of the following is not a Javascript framework?', '', '', 'mc'),
(34, 1, 34, 'What will be the output of the following code snippet?', 'var a = &quot;hello&quot;;\r\nvar sum = 0;\r\nfor(var i = 0; i &lt; a.length; i++) {\r\n   sum += (a[i] - \'a\');\r\n}\r\nprint(sum);', 'js', 'mc'),
(35, 1, 35, '\r\nWhat keyword is used to declare an asynchronous function in Javascript?', '', '', 'mc'),
(36, 1, 36, 'How to stop an interval timer in Javascript?', '', '', 'mc'),
(37, 1, 37, 'What will be the output of the following code snippet?', 'const set = new Set();\r\nset.add(5);\r\nset.add(\'Hello\');\r\nset.add({ name: \'Scaler\' });\r\nfor (let item of set) {\r\n console.log(item + 6);\r\n}', 'js', 'mc'),
(38, 1, 38, 'How are objects compared when they are checked with the strict equality operator?', '', '', 'mc'),
(39, 1, 39, 'What does â€¦ operator do in JS?', '', '', 'mc'),
(40, 1, 40, 'What will be the output of the following code snippet?', 'const example = ({ a, b, c }) =&gt; {\r\n console.log(a, b, c);\r\n};\r\nexample(0, 1, 2);', 'js', 'mc'),
(41, 1, 41, 'What will be the output of the following code snippet?', 'let a = [1, 2, 3, 4, 5, 6];\r\nvar left = 0, right = 5;\r\nvar found = false;\r\nvar target = 5;\r\nwhile(left &lt;= right) {\r\n   var mid = Math.floor((left + right) / 2);\r\n   if(a[mid] == target) {\r\n       found = true;\r\n       break;\r\n   }\r\n   else if(a[mid] &lt; target) {\r\n       left = mid + 1;\r\n   }\r\n   else {\r\n       right = mid - 1;\r\n   }\r\n}\r\nif(found) {\r\n   print(&quot;YES&quot;);\r\n}\r\nelse {\r\n   print(&quot;NO&quot;);\r\n}', 'js', 'mc'),
(42, 1, 42, 'What will be the output of the following code snippet?', 'let s = &quot;00000001111111&quot;;\r\nlet l = 0, r = s.length - 1, ans = -1;\r\nwhile(l &lt;= r) {\r\n   var mid = Math.floor((l + r) / 2);\r\n   if(s[mid] == \'1\') {\r\n       ans = mid;\r\n       r = mid - 1;\r\n   }\r\n   else {\r\n       l = mid + 1;\r\n   }\r\n}\r\nprint(ans);', 'js', 'mc'),
(43, 1, 43, 'What will be the output of the following code snippet?', 'let n = 24;\r\nlet l = 0, r = 100, ans = n;\r\nwhile(l &lt;= r) {\r\n   let mid = Math.floor((l + r) / 2);\r\n   if(mid * mid &lt;= n) {\r\n       ans = mid;\r\n       l = mid + 1;\r\n   }\r\n   else {\r\n       r = mid - 1;\r\n   }\r\n}\r\nprint(ans);', 'js', 'mc'),
(44, 1, 44, 'What will be the output of the following code snippet?', 'const obj1 = {Name: &quot;Hello&quot;, Age: 16};\r\nconst obj2 = {Name: &quot;Hello&quot;, Age: 16};\r\nprint(obj1 === obj2);', 'js', 'mc'),
(45, 1, 45, 'What happens when we run this code?', 'function dog() {\r\n   print(&quot;I am a dog.&quot;);\r\n}\r\ndog.sound = &quot;Bark&quot;;', 'js', 'mc'),
(46, 1, 46, 'How do we write a comment in javascript?\r\n\r\n\r\n\r\n\r\n\r\n', '', '', 'mc'),
(47, 1, 47, 'Which object in Javascript doesnâ€™t have a prototype?', '', '', 'mc'),
(48, 1, 48, 'What will be the output of the following code snippet?', 'function test(...args) {\r\n console.log(typeof args);\r\n}\r\ntest(12);', 'js', 'mc'),
(49, 1, 49, 'What will be the output of the following code snippet?', 'const obj1 = {first: 20, second: 30, first: 50};\r\nconsole.log(obj1);', 'js', 'mc'),
(50, 1, 50, 'Which of the following are not server-side Javascript objects?', '', '', 'mc');

-- --------------------------------------------------------

--
-- Table structure for table `quizes`
--

CREATE TABLE `quizes` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `quiz_name` varchar(50) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `display_questions` int(11) NOT NULL,
  `time_allotted` int(11) NOT NULL,
  `set_default` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizes`
--

INSERT INTO `quizes` (`id`, `quiz_id`, `quiz_name`, `total_questions`, `display_questions`, `time_allotted`, `set_default`) VALUES
(1, 1, 'Javascript', 50, 50, 60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_takers`
--

CREATE TABLE `quiz_takers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `percentage` varchar(24) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_takers`
--

INSERT INTO `quiz_takers` (`id`, `username`, `quiz_id`, `marks`, `percentage`, `date_time`, `duration`) VALUES
(1, '1', 0, 0, '0', '2023-08-31 18:56:39', 0),
(2, '1', 1, 0, '0', '2023-08-31 18:57:03', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizes`
--
ALTER TABLE `quizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_takers`
--
ALTER TABLE `quiz_takers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `quizes`
--
ALTER TABLE `quizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quiz_takers`
--
ALTER TABLE `quiz_takers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
