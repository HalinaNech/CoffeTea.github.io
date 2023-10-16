-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Окт 16 2023 г., 03:17
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `coffe-tea-shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `mail` varchar(50) NOT NULL,
  `pas` varchar(24) NOT NULL,
  `address` varchar(255) NOT NULL,
  `telefon` varchar(50) NOT NULL,
  `comment` mediumtext,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id_client`, `name`, `mail`, `pas`, `address`, `telefon`, `comment`) VALUES
(1, 'Иванов А.Б.', 'vasa@mail.ru', '111', 'ул. Камисара 34', '455856544856', ''),
(2, 'Павлов В.Е.', 'ira@mail.ru', '222', 'ул. Школьная 56', '565464651616', ''),
(3, 'Косарев А.П.', 'vas@gmail.com', '333', 'ул. Мира 87', '321564613136', ''),
(4, 'Игнатова А.Б.', 'dimasval@mail.ru, ', '444', 'ул.Земца 365', '233659852336', ''),
(5, 'Никитенко В.К.', 'info@kfrgtu.ru', '555', 'ул. Урицкого 76', '231656554464', ''),
(6, 'Ильина К.Ж.', 'a_suglobov@mail.ru', '666', 'ул. Куралесина 265', '321351651516', ''),
(7, 'Кузнецов И.Б.', 'nov@chel.usi.ru', '777', 'ул. Кашина 86', '156546161616', ''),
(8, 'Демидова А.И.', 'Vladnov@vvsu.ru', '888', 'ул.Врангеля 57', '143651561565', ''),
(9, 'Курицын В.К.', 'is@suct.ru', '999', 'ул.Семенова 54', '654646464664', ''),
(10, 'Шахов А.В.', 'Kirnko@eurochem.ru', '100', 'ул.Венцека 95', '212321561510', ''),
(11, 'Семенов М.Ю.', 'semenov@mail.ru', '123', 'Пирогова 8', '123456987', ''),
(12, 'Платонов И.В.', 'platonov_ivan2022@mail.ru', '555', 'Пирогова 9', '+70971234564', 'доставка к 3 подъезду');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id_order`, `id_client`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 4),
(5, 5),
(6, 9),
(7, 9),
(8, 10),
(9, 6),
(10, 7),
(11, 8),
(12, 6),
(13, 9),
(14, 5),
(15, 1),
(16, 1),
(17, 11),
(18, 11),
(19, 11),
(20, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `producers`
--

CREATE TABLE IF NOT EXISTS `producers` (
  `id_producer` int(11) NOT NULL AUTO_INCREMENT,
  `producer_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_producer`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `producers`
--

INSERT INTO `producers` (`id_producer`, `producer_name`) VALUES
(1, 'Блюз'),
(2, 'Куппо'),
(3, 'Русский продукт'),
(4, 'Амадо'),
(5, 'Брилль Cafe'),
(6, 'МАЙ'),
(7, 'АльфаГрупп'),
(8, 'Дагомысчай'),
(9, 'BetaTea'),
(10, 'Алтай-Старовер');

-- --------------------------------------------------------

--
-- Структура таблицы `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `id_pur` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `artic` int(11) NOT NULL,
  `hm` int(11) NOT NULL,
  PRIMARY KEY (`id_pur`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Дамп данных таблицы `purchase`
--

INSERT INTO `purchase` (`id_pur`, `id_client`, `id_order`, `artic`, `hm`) VALUES
(1, 1, 1, 21, 1),
(2, 1, 1, 24, 1),
(3, 2, 2, 31, 1),
(4, 2, 2, 33, 1),
(5, 2, 3, 34, 1),
(6, 4, 4, 27, 2),
(7, 4, 4, 28, 1),
(8, 5, 5, 29, 2),
(9, 5, 5, 25, 3),
(10, 9, 6, 36, 1),
(11, 9, 7, 35, 1),
(12, 9, 7, 34, 4),
(13, 10, 8, 33, 1),
(14, 6, 9, 28, 1),
(15, 7, 10, 26, 1),
(16, 8, 11, 24, 1),
(17, 8, 11, 21, 2),
(18, 6, 12, 22, 1),
(19, 9, 13, 29, 1),
(20, 5, 14, 30, 4),
(21, 1, 15, 21, 1),
(22, 1, 15, 31, 1),
(23, 1, 16, 21, 1),
(24, 1, 16, 31, 1),
(25, 1, 16, 35, 1),
(26, 11, 17, 11, 1),
(27, 11, 17, 12, 1),
(28, 11, 18, 7, 1),
(29, 11, 18, 30, 1),
(30, 11, 19, 14, 2),
(33, 11, 20, 26, 1),
(34, 11, 20, 29, 1),
(35, 11, 20, 14, 2),
(36, 11, 20, 24, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE IF NOT EXISTS `tovar` (
  `artic` int(11) NOT NULL AUTO_INCREMENT,
  `id_tovar_type` int(11) NOT NULL,
  `id_producer` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float(7,2) DEFAULT NULL,
  `amount` int(5) NOT NULL,
  `foto_sm` enum('Y','N') NOT NULL,
  `sold` int(11) NOT NULL,
  PRIMARY KEY (`artic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=272 ;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`artic`, `id_tovar_type`, `id_producer`, `name`, `price`, `amount`, `foto_sm`, `sold`) VALUES
(14, 3, 5, 'Кофе в зернах Брилль Cafe «Puerto Rico» 1 кг', 2470.97, 10, 'Y', 2),
(17, 1, 5, 'Чаи Три листа Молочный улун 75 гр', 307.00, 30, 'Y', 1),
(3, 3, 1, 'Кофе в зёрнах Уганда Бугишу, 1 кг', 4800.00, 9, 'Y', 1),
(21, 1, 7, 'Фасованный чай «Брызги шампанского» 1 сорт 150 гр.', 169.00, 0, 'Y', 0),
(19, 1, 6, 'Майский отборный цейлонский черный чай 100 пакетиков', 253.00, 15, 'Y', 1),
(18, 2, 5, 'Чай Natty Облепиховый сбор (non-touch) 15*2,5 гр', 500.00, 13, 'Y', 12),
(12, 4, 4, 'Подарочный набор Кофе Amado', 1116.00, 40, 'Y', 0),
(29, 2, 10, 'Чай "Еринат" чистые сосуды, 40г', 70.00, 10, 'Y', 2),
(6, 3, 2, 'Кофе NESCAFE CLASSIC 50 гр', 430.00, 20, 'Y', 4),
(5, 3, 2, 'ATTACHE ITALIAN ROAST 250 гр', 410.00, 10, 'Y', 1),
(4, 3, 2, 'Петр Великий Арабика 250 гр', 279.00, 30, 'Y', 5),
(2, 3, 1, 'Кофе в зёрнах Эфиопия СИДАМО, 1 кг', 6370.00, 3, 'Y', 1),
(16, 1, 5, 'Чай Natty Матча 50 гр', 426.00, 5, 'Y', 0),
(1, 3, 1, 'Органический кофе в зёрнах Мексика, 200 г', 1200.00, 2, 'Y', 10),
(15, 4, 5, 'Кофе в зернах Брилль Cafe «MIX 2» набор 6 кг.', 7890.00, 8, 'Y', 0),
(7, 3, 3, 'Кофе в зернах Русский Продукт Arabica 500 гр.', 832.00, 10, 'Y', 12),
(8, 3, 3, 'Кофе натуральный жареный молотый ароматизированный вкус «Ирландский ликер», 500 г.', 1400.00, 10, 'Y', 2),
(9, 3, 3, 'Растворимый кофе Традиция Классический 95 гр', 170.00, 10, 'Y', 2),
(10, 3, 4, 'Кофе Amado в капсулах Французская ваниль 10 шт', 342.00, 5, 'Y', 1),
(11, 3, 4, 'Кофе Amado в зернах Колумбия 200г', 460.00, 7, '', 0),
(26, 1, 9, 'Чай Beta Tea Royal quality черный, мелколистовой, 100 пакетиков', 390.00, 10, 'Y', 14),
(23, 1, 8, 'Чай зеленый с Жасмином 100гр', 750.00, 3, 'Y', 3),
(20, 1, 7, 'Фасованный чай «Великий Император» 1 сорт 150 гр.', 200.00, 10, 'Y', 2),
(24, 4, 8, 'Дагомыс Чай ассорти №6 «Большая коллекция Краснодарского чая» 830 гр', 1990.00, 20, 'Y', 5),
(27, 1, 9, 'Чай черный Beta Tea байховый крупнолистовой 250 г', 230.00, 5, 'Y', 1),
(30, 2, 10, 'Чай "Охотничье зимовье №1" противодиабетический утренний, 40г', 80.00, 4, 'Y', 8),
(28, 2, 10, 'Чай "Вершина лета" печеночный, 40г', 92.00, 2, 'Y', 3),
(13, 3, 5, 'Кофе молотый Брилль Cafe «КЕНИЯ» 190 гр', 705.00, 10, 'Y', 2),
(25, 1, 9, 'Чай Beta Tea Opa черный, крупнолистовой, 250 г', 355.00, 5, 'Y', 6),
(22, 1, 8, 'Дагомыс Чай черный байховый в мешочке 200 гр', 510.00, 10, 'Y', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar_types`
--

CREATE TABLE IF NOT EXISTS `tovar_types` (
  `id_tovar_type` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id_tovar_type`),
  KEY `id_soft_type` (`id_tovar_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `tovar_types`
--

INSERT INTO `tovar_types` (`id_tovar_type`, `type`) VALUES
(1, 'Чай'),
(2, 'Чайный сбор'),
(3, 'Кофе'),
(4, 'Наборы');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
