-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 21 2019 г., 20:00
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `practice_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `post` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `linkedin` varchar(40) NOT NULL,
  `twitter` varchar(30) DEFAULT NULL,
  `phone` varchar(30) NOT NULL,
  `github` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `post`, `email`, `linkedin`, `twitter`, `phone`, `github`) VALUES
(1, 'Roev Evgen', 'Full Stack Developer', 'roevevgen7@gmail.com', 'www.linkedin.com/in/evgen-roev-628b26192', 'https://twitter.com/RoevEvgen', '+380936833297', 'https://github.com/roevevgen');

-- --------------------------------------------------------

--
-- Структура таблицы `aboutcareer`
--

CREATE TABLE `aboutcareer` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aboutcareer`
--

INSERT INTO `aboutcareer` (`id`, `title`) VALUES
(1, 'I am a junior Front-End developer with a great desire to participate in interesting complex\r\n    projects with cool ideas, where I can use my existing skills and develop new ones to help achieve organizational\r\n     goals');

-- --------------------------------------------------------

--
-- Структура таблицы `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aboutus`
--

INSERT INTO `aboutus` (`id`, `title`) VALUES
(1, 'I am a Junior Front-End Developer with a great desire to participate in interesting complex \r\n                    projects with cool ideas, where I can use my existing skills and develop new ones to contribute to achieving \r\n                    organizational goals<br>\r\n                    Punctuality, sociability, responsibility, high efficiency, initiative, energy, dedication, ability to work in a team,\r\n                    focus on results.<br>\r\n                    Analytical mindset, willingness to learn and acquire new skills, high personal motivation, desire to work and develop, \r\n                    ability to work in a team, attention to details, quick wit, responsibility, determination');

-- --------------------------------------------------------

--
-- Структура таблицы `career`
--

CREATE TABLE `career` (
  `id` int(11) NOT NULL,
  `post` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `duty` varchar(1000) NOT NULL,
  `yearStart` varchar(30) NOT NULL,
  `yearEnd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `career`
--

INSERT INTO `career` (`id`, `post`, `place`, `duty`, `yearStart`, `yearEnd`) VALUES
(3, 'post1', 'City1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab autem dignissimos ea excepturi exercitationem maxime\r\n                       perspiciatis porro soluta velit veritatis. Accusantium, aliquid amet at corporis dicta ea error est et facilis impedit\r\n                        ipsam, magni maxime molestias quia quisquam sequi totam ut velit vitae voluptatum? Aut consequatur ducimus eum ipsa\r\n                        ipsam mollitia nisi ut veritatis! Delectus modi officia quod ratione veniam.', '2019', 'Настоящее время'),
(4, 'post2', 'City2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab autem dignissimos ea excepturi exercitationem maxime\r\n                       perspiciatis porro soluta velit veritatis. Accusantium, aliquid amet at corporis dicta ea error est et facilis impedit\r\n                        ipsam, magni maxime molestias quia quisquam sequi totam ut velit vitae voluptatum? Aut consequatur ducimus eum ipsa\r\n                        ipsam mollitia nisi ut veritatis! Delectus modi officia quod ratione veniam.', '2019', '2019'),
(5, 'post3', 'City3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab autem dignissimos ea excepturi exercitationem maxime\r\n                       perspiciatis porro soluta velit veritatis. Accusantium, aliquid amet at corporis dicta ea error est et facilis impedit\r\n                        ipsam, magni maxime molestias quia quisquam sequi totam ut velit vitae voluptatum? Aut consequatur ducimus eum ipsa\r\n                        ipsam mollitia nisi ut veritatis! Delectus modi officia quod ratione veniam.', '2019', '2019');

-- --------------------------------------------------------

--
-- Структура таблицы `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `courses` varchar(100) NOT NULL,
  `training` varchar(30) NOT NULL,
  `yearStart` int(11) NOT NULL,
  `yearEnd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `education`
--

INSERT INTO `education` (`id`, `courses`, `training`, `yearStart`, `yearEnd`) VALUES
(1, 'SEO courses', 'Cursor, Kiev Training Center', 2018, '2019'),
(2, 'Web UI Basics', 'Lviv IT School - Prometheus', 2019, '2019'),
(3, 'HTML5&CSS3 Starter', 'CyberBionic Systematics', 2019, '2019'),
(4, 'JavaScript Essential', 'CyberBionic Systematics', 2019, '2019'),
(5, 'JavaScript Advanced', 'CyberBionic Systematics', 2019, '2019'),
(6, 'HTML5&CSS3 Advanced', 'CyberBionic Systematics', 2019, '2019'),
(7, 'Tviter Bootstrap4', 'CyberBionic Systematics', 2019, '2019'),
(8, 'TipeScript Fundamentals', 'CyberBionic Systematics', 2019, '2019'),
(9, 'Angular Essential', 'CyberBionic Systematics', 2019, '2019'),
(10, 'Web Frontend Developer', 'CyberBionic Systematics', 2019, '2019');

-- --------------------------------------------------------

--
-- Структура таблицы `interests`
--

CREATE TABLE `interests` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `interests`
--

INSERT INTO `interests` (`id`, `title`) VALUES
(1, 'programming'),
(2, 'interest1'),
(3, 'interest2');

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lang` varchar(30) NOT NULL,
  `hold` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `lang`, `hold`) VALUES
(1, 'Ukrainian', 'Professional'),
(2, 'Russian', 'Professional'),
(3, 'English', 'Beginning');

-- --------------------------------------------------------

--
-- Структура таблицы `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `skill` varchar(1000) NOT NULL,
  `percent` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `levels`
--

INSERT INTO `levels` (`id`, `skill`, `percent`) VALUES
(1, 'VS Code &amp; Webstorm &amp; PhpStorm', '100%'),
(2, 'HTML5 &amp; CSS3', '95%'),
(3, 'SASS  &amp; LESS', '90%'),
(4, 'Gulp &amp;Webpack', '80%'),
(5, 'Sketch &amp; Photoshop', '60%'),
(6, 'PHP &amp; SQL', '50%'),
(7, 'Javascript &amp; jQuery', '40%'),
(8, 'Angular', '20%'),
(9, 'React &amp; Vue', '20%');

-- --------------------------------------------------------

--
-- Структура таблицы `projectus`
--

CREATE TABLE `projectus` (
  `id` int(11) NOT NULL,
  `projectus` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `href` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `projectus`
--

INSERT INTO `projectus` (`id`, `projectus`, `description`, `href`) VALUES
(1, 'Childhood', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci animi, aspernatur eaque modi mollitia nemo iunt odio vitae voluptatem.', 'https://github.com/roevevgen/childhood.git'),
(2, 'Advogrand', 'Lorem2 ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci animi, aspernatur eaque modi mollitia nemo iunt odio vitae voluptatem.', 'https://github.com/roevevgen/advogrand.git'),
(3, 'Granit', 'Lorem3 ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci animi, aspernatur eaque modi mollitia nemo iunt odio vitae voluptatem.', 'https://github.com/roevevgen/granit.git'),
(4, 'Nasim', 'Lorem4 ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci animi, aspernatur eaque modi mollitia nemo iunt odio vitae voluptatem.', 'https://github.com/roevevgen/nasim.git'),
(5, 'Sochi', 'Lorem5 ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci animi, aspernatur eaque modi mollitia nemo iunt odio vitae voluptatem.', 'https://github.com/roevevgen/Sochi.git'),
(6, 'Yoga', 'Lorem6 ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci animi, aspernatur eaque modi mollitia nemo iunt odio vitae voluptatem.', 'https://github.com/roevevgen/yoga.git'),
(7, 'Sapfir', 'Lorem7 ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci animi, aspernatur eaque modi mollitia nemo iunt odio vitae voluptatem.', 'https://github.com/roevevgen/sapfir.git'),
(8, 'Travel_agency', 'Lorem8 ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci animi, aspernatur eaque modi mollitia nemo iunt odio vitae voluptatem.', 'https://github.com/roevevgen/travel_agency.git'),
(9, 'Amazing-Dude', 'Lorem9 ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci animi, aspernatur eaque modi mollitia nemo iunt odio vitae voluptatem.', 'https://github.com/roevevgen/Amazing-Dude.git'),
(10, 'We_believe', 'Lorem10 ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci animi, aspernatur eaque modi mollitia nemo iunt odio vitae voluptatem.', 'https://github.com/roevevgen/We_believe.git');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aboutcareer`
--
ALTER TABLE `aboutcareer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `projectus`
--
ALTER TABLE `projectus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `aboutcareer`
--
ALTER TABLE `aboutcareer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `career`
--
ALTER TABLE `career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `interests`
--
ALTER TABLE `interests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `projectus`
--
ALTER TABLE `projectus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
