#
# TABLE STRUCTURE FOR: government_agencies
#

DROP TABLE IF EXISTS `government_agencies`;

CREATE TABLE `government_agencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO `government_agencies` (`id`, `name`) VALUES (1, 'ФНС России');
INSERT INTO `government_agencies` (`id`, `name`) VALUES (2, 'МЧС России');
INSERT INTO `government_agencies` (`id`, `name`) VALUES (3, 'МВД России');
INSERT INTO `government_agencies` (`id`, `name`) VALUES (4, 'Минздрав России');
INSERT INTO `government_agencies` (`id`, `name`) VALUES (5, 'ФСС РФ');
INSERT INTO `government_agencies` (`id`, `name`) VALUES (6, 'Росреестр');
INSERT INTO `government_agencies` (`id`, `name`) VALUES (7, 'ГУВМ');
INSERT INTO `government_agencies` (`id`, `name`) VALUES (8, 'ФДА');
INSERT INTO `government_agencies` (`id`, `name`) VALUES (9, 'Роспотребнадзор');
INSERT INTO `government_agencies` (`id`, `name`) VALUES (10, 'ПФР');
INSERT INTO `government_agencies` (`id`, `name`) VALUES (11, 'ФССП России');
INSERT INTO `government_agencies` (`id`, `name`) VALUES (12, 'Роскомнадзор');


#
# TABLE STRUCTURE FOR: life_situation_categories
#

DROP TABLE IF EXISTS `life_situation_categories`;

CREATE TABLE `life_situation_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `life_situation_categories` (`id`, `name`) VALUES (1, 'Документы');
INSERT INTO `life_situation_categories` (`id`, `name`) VALUES (2, 'Недвижимость');
INSERT INTO `life_situation_categories` (`id`, `name`) VALUES (3, 'Работа');
INSERT INTO `life_situation_categories` (`id`, `name`) VALUES (4, 'Образование');
INSERT INTO `life_situation_categories` (`id`, `name`) VALUES (5, 'Правопорядок');
INSERT INTO `life_situation_categories` (`id`, `name`) VALUES (6, 'Автомобиль');
INSERT INTO `life_situation_categories` (`id`, `name`) VALUES (7, 'Путешествие');
INSERT INTO `life_situation_categories` (`id`, `name`) VALUES (8, 'Пенсия');
INSERT INTO `life_situation_categories` (`id`, `name`) VALUES (9, 'Семья');
INSERT INTO `life_situation_categories` (`id`, `name`) VALUES (10, 'Инвалидность');


#
# TABLE STRUCTURE FOR: life_situations
#

DROP TABLE IF EXISTS `life_situations`;

CREATE TABLE `life_situations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `life_situation_category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_SITUATION_CAT_idx` (`life_situation_category_id`),
  CONSTRAINT `FK_SITUATION_CAT` FOREIGN KEY (`life_situation_category_id`) REFERENCES `life_situation_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (1, 'natus', 1);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (2, 'explicabo', 2);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (3, 'iste', 3);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (4, 'sit', 4);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (5, 'odit', 5);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (6, 'ipsa', 6);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (7, 'quo', 7);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (8, 'et', 8);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (9, 'voluptatem', 9);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (10, 'occaecati', 10);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (11, 'labore', 1);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (12, 'corrupti', 2);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (13, 'repudiandae', 3);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (14, 'possimus', 4);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (15, 'magnam', 5);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (16, 'dolorem', 6);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (17, 'veritatis', 7);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (18, 'beatae', 8);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (19, 'quas', 9);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (20, 'minima', 10);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (21, 'est', 1);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (22, 'ut', 2);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (23, 'blanditiis', 3);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (24, 'doloribus', 4);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (25, 'quibusdam', 5);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (26, 'magnam', 6);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (27, 'et', 7);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (28, 'aut', 8);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (29, 'non', 9);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (30, 'occaecati', 10);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (31, 'eveniet', 1);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (32, 'odit', 2);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (33, 'velit', 3);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (34, 'voluptates', 4);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (35, 'magnam', 5);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (36, 'expedita', 6);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (37, 'possimus', 7);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (38, 'veritatis', 8);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (39, 'eos', 9);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (40, 'quod', 10);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (41, 'blanditiis', 1);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (42, 'tenetur', 2);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (43, 'iure', 3);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (44, 'eveniet', 4);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (45, 'architecto', 5);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (46, 'est', 6);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (47, 'facere', 7);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (48, 'laboriosam', 8);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (49, 'quos', 9);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (50, 'id', 10);


#
# TABLE STRUCTURE FOR: logs
#

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `table` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `object_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: payed_object_types
#

DROP TABLE IF EXISTS `payed_object_types`;

CREATE TABLE `payed_object_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `payed_object_types` (`id`, `name`) VALUES (1, 'service');
INSERT INTO `payed_object_types` (`id`, `name`) VALUES (2, 'tax');


#
# TABLE STRUCTURE FOR: payments
#

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `object_id` int(11) unsigned NOT NULL,
  `payed_object_type_id` int(11) unsigned NOT NULL,
  `payment_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_PAYED_OBJ_TYPE_idx` (`payed_object_type_id`),
  KEY `FK_PAYMENTS_USER_ID` (`user_id`),
  CONSTRAINT `FK_PAYED_OBJ_TYPE` FOREIGN KEY (`payed_object_type_id`) REFERENCES `payed_object_types` (`id`),
  CONSTRAINT `FK_PAYMENTS_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (101, '1981-10-21 14:50:34', 73, 1, '', 38);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (102, '1999-02-09 15:09:13', 8, 2, '', 59);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (104, '2002-01-18 14:37:40', 75, 2, '', 2);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (105, '2011-05-31 15:08:21', 65, 1, '', 93);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (106, '2005-04-04 09:42:31', 8, 2, '', 91);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (107, '1981-01-19 10:33:23', 7, 1, '', 54);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (108, '1986-04-10 21:10:35', 92, 2, '', 15);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (109, '1977-03-27 08:58:23', 56, 1, '', 36);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (110, '2017-03-26 07:25:26', 34, 2, '', 53);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (111, '2008-07-27 18:24:50', 84, 1, '', 37);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (112, '1975-02-04 19:35:38', 61, 2, '', 43);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (113, '1990-05-27 22:25:39', 14, 1, '', 26);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (114, '2011-12-19 14:23:52', 42, 2, '', 50);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (115, '2006-01-08 04:31:55', 10, 1, '', 1);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (116, '1985-12-24 11:07:33', 96, 2, '', 32);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (117, '1978-05-05 02:15:07', 27, 1, '', 11);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (118, '1974-11-15 18:43:08', 86, 2, '', 89);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (119, '1995-08-18 13:30:36', 20, 1, '', 65);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (120, '1987-03-18 02:33:34', 48, 2, '', 82);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (121, '1996-04-22 10:50:21', 76, 1, '', 38);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (122, '1993-10-29 21:15:25', 30, 2, '', 49);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (123, '1973-05-28 22:15:17', 89, 1, '', 63);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (124, '1988-02-11 08:21:10', 98, 2, '', 17);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (125, '1990-09-28 23:38:57', 5, 1, '', 18);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (126, '1984-10-21 04:40:00', 50, 2, '', 70);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (127, '2017-01-11 20:46:20', 52, 1, '', 27);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (128, '2016-11-05 18:47:32', 51, 2, '', 67);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (129, '1988-01-13 20:59:24', 60, 1, '', 77);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (130, '1994-08-13 23:03:43', 71, 2, '', 31);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (131, '2016-05-15 16:55:40', 28, 1, '', 68);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (132, '2011-05-02 11:05:11', 24, 2, '', 94);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (133, '2008-06-21 01:13:22', 51, 1, '', 21);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (134, '1994-03-28 02:11:03', 87, 2, '', 31);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (135, '1996-12-05 15:47:08', 7, 1, '', 87);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (136, '1995-05-27 02:00:33', 34, 2, '', 3);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (137, '2011-12-27 07:25:37', 88, 1, '', 73);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (138, '1998-10-05 01:12:32', 23, 2, '', 70);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (139, '1992-01-01 02:54:25', 87, 1, '', 2);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (140, '1973-08-21 20:39:18', 42, 2, '', 19);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (141, '1975-05-18 05:17:57', 31, 1, '', 36);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (142, '2015-10-15 11:39:27', 25, 2, '', 14);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (143, '1998-09-10 08:00:41', 77, 1, '', 51);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (144, '2004-05-30 12:46:27', 37, 2, '', 63);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (145, '2000-01-13 08:54:51', 10, 1, '', 34);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (146, '1979-02-24 22:33:45', 14, 2, '', 48);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (147, '2012-08-14 08:55:12', 22, 1, '', 1);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (148, '1991-05-21 11:23:48', 88, 2, '', 79);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (149, '1985-12-29 16:59:49', 9, 1, '', 82);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (150, '2007-06-21 23:41:22', 39, 2, '', 17);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (151, '2006-03-18 04:31:02', 13, 1, '', 16);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (152, '1995-06-24 18:24:36', 89, 2, '', 15);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (153, '1998-07-02 20:27:25', 90, 1, '', 9);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (154, '1975-10-23 14:53:13', 39, 2, '', 58);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (155, '2002-07-29 05:52:32', 61, 1, '', 58);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (156, '1977-08-30 18:14:12', 84, 2, '', 75);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (157, '1976-02-10 13:52:34', 88, 1, '', 1);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (159, '2013-04-27 09:31:50', 58, 1, '', 77);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (160, '2000-08-08 05:45:57', 12, 2, '', 31);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (161, '1989-02-26 22:27:57', 90, 1, '', 87);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (162, '1998-11-01 15:14:07', 74, 2, '', 39);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (163, '1990-07-30 16:18:32', 14, 1, '', 6);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (164, '1984-03-14 08:47:17', 22, 2, '', 41);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (165, '1974-04-24 12:55:05', 10, 1, '', 44);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (166, '1976-07-20 08:18:49', 56, 2, '', 76);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (167, '1984-03-23 05:32:14', 25, 1, '', 47);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (168, '1987-11-04 23:34:07', 76, 2, '', 64);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (169, '2011-06-22 11:21:07', 72, 1, '', 79);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (170, '2014-08-26 08:47:36', 7, 2, '', 23);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (172, '1989-01-31 11:24:02', 94, 2, '', 59);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (173, '2011-06-15 06:52:38', 54, 1, '', 54);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (175, '2003-06-07 17:43:03', 72, 1, '', 58);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (176, '1986-04-04 09:06:12', 44, 2, '', 85);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (177, '1990-05-25 16:02:57', 76, 1, '', 76);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (178, '1977-04-01 08:39:18', 88, 2, '', 29);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (180, '1986-02-14 03:34:09', 96, 2, '', 60);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (181, '2016-05-31 01:06:13', 7, 1, '', 97);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (182, '2005-11-14 04:19:55', 35, 2, '', 18);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (183, '1994-10-26 21:17:51', 55, 1, '', 70);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (185, '1988-07-04 17:52:31', 86, 1, '', 48);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (186, '2000-04-09 04:10:22', 64, 2, '', 4);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (187, '1993-03-22 11:56:56', 41, 1, '', 36);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (188, '2015-01-21 16:46:21', 32, 2, '', 7);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (189, '1978-05-01 14:35:38', 30, 1, '', 78);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (190, '2008-04-26 18:08:52', 79, 2, '', 27);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (191, '1977-04-24 16:11:13', 93, 1, '', 83);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (192, '2014-02-14 09:46:59', 49, 2, '', 4);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (193, '1974-09-08 14:15:12', 60, 1, '', 9);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (194, '1996-09-13 05:34:36', 99, 2, '', 21);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (195, '2010-02-16 08:30:46', 85, 1, '', 31);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (196, '2003-02-26 03:59:54', 92, 2, '', 16);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (197, '1991-09-22 23:15:16', 51, 1, '', 72);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (198, '2010-06-22 13:43:24', 14, 2, '', 18);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (199, '2008-10-17 06:38:43', 91, 1, '', 52);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (200, '1980-04-22 12:42:06', 31, 2, '', 44);


#
# TABLE STRUCTURE FOR: service_categories
#

DROP TABLE IF EXISTS `service_categories`;

CREATE TABLE `service_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO `service_categories` (`id`, `name`) VALUES (1, 'doloremque');
INSERT INTO `service_categories` (`id`, `name`) VALUES (2, 'consectetur');
INSERT INTO `service_categories` (`id`, `name`) VALUES (3, 'minus');
INSERT INTO `service_categories` (`id`, `name`) VALUES (4, 'cumque');
INSERT INTO `service_categories` (`id`, `name`) VALUES (5, 'illo');
INSERT INTO `service_categories` (`id`, `name`) VALUES (6, 'similique');
INSERT INTO `service_categories` (`id`, `name`) VALUES (7, 'eum');
INSERT INTO `service_categories` (`id`, `name`) VALUES (8, 'repudiandae');
INSERT INTO `service_categories` (`id`, `name`) VALUES (9, 'veniam');
INSERT INTO `service_categories` (`id`, `name`) VALUES (10, 'dolores');
INSERT INTO `service_categories` (`id`, `name`) VALUES (11, 'cupiditate');
INSERT INTO `service_categories` (`id`, `name`) VALUES (12, 'rem');
INSERT INTO `service_categories` (`id`, `name`) VALUES (13, 'esse');
INSERT INTO `service_categories` (`id`, `name`) VALUES (14, 'qui');
INSERT INTO `service_categories` (`id`, `name`) VALUES (15, 'quia');
INSERT INTO `service_categories` (`id`, `name`) VALUES (16, 'deserunt');
INSERT INTO `service_categories` (`id`, `name`) VALUES (17, 'iusto');
INSERT INTO `service_categories` (`id`, `name`) VALUES (18, 'cum');
INSERT INTO `service_categories` (`id`, `name`) VALUES (19, 'aut');
INSERT INTO `service_categories` (`id`, `name`) VALUES (20, 'officia');


#
# TABLE STRUCTURE FOR: services
#

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_category_id` int(11) unsigned NOT NULL,
  `gov_agency_id` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `life_situation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_SERVICE_CAT_idx` (`service_category_id`),
  KEY `FK_GOV_AGENCY_idx` (`gov_agency_id`),
  KEY `FK_LIFE_SITUATION_idx` (`life_situation_id`),
  CONSTRAINT `FK_GOV_AGENCY` FOREIGN KEY (`gov_agency_id`) REFERENCES `government_agencies` (`id`),
  CONSTRAINT `FK_LIFE_SITUATION` FOREIGN KEY (`life_situation_id`) REFERENCES `life_situations` (`id`),
  CONSTRAINT `FK_SERVICE_CAT` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (1, 11, 2, 'repellendus', 45);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (2, 19, 2, 'sint', 46);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (3, 16, 1, 'quia', 17);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (4, 15, 10, 'excepturi', 7);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (5, 18, 1, 'provident', 30);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (6, 17, 10, 'beatae', 2);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (7, 20, 10, 'dolor', 35);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (8, 19, 2, 'et', 46);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (9, 11, 5, 'tenetur', 7);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (10, 9, 2, 'ipsum', 35);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (11, 8, 3, 'veniam', 3);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (12, 16, 5, 'in', 48);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (13, 8, 10, 'a', 11);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (14, 14, 8, 'dignissimos', 44);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (15, 11, 8, 'officiis', 3);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (16, 20, 5, 'voluptatum', 24);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (17, 9, 10, 'molestias', 44);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (18, 11, 5, 'velit', 6);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (19, 19, 9, 'quasi', 4);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (20, 18, 8, 'culpa', 39);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (21, 10, 12, 'tempora', 20);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (22, 18, 10, 'rerum', 17);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (23, 14, 6, 'sit', 19);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (24, 6, 1, 'modi', 33);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (25, 1, 12, 'at', 2);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (26, 13, 5, 'optio', 12);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (27, 5, 8, 'ut', 48);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (28, 13, 9, 'recusandae', 16);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (29, 12, 2, 'magni', 38);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (30, 18, 10, 'praesentium', 27);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (31, 6, 1, 'eius', 6);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (32, 9, 3, 'ad', 20);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (33, 5, 5, 'consectetur', 13);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (34, 8, 6, 'sunt', 48);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (35, 14, 5, 'molestiae', 34);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (36, 8, 2, 'aut', 26);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (37, 7, 9, 'fuga', 38);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (38, 3, 4, 'aperiam', 11);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (39, 8, 5, 'accusantium', 34);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (40, 2, 3, 'ea', 26);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (41, 14, 2, 'qui', 23);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (42, 12, 4, 'consequatur', 43);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (43, 18, 1, 'voluptatibus', 46);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (44, 16, 1, 'ratione', 21);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (45, 18, 3, 'nulla', 19);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (46, 17, 8, 'laudantium', 7);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (47, 17, 11, 'quo', 17);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (48, 15, 1, 'facilis', 4);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (49, 8, 8, 'assumenda', 23);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (50, 3, 1, 'odit', 40);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (51, 17, 12, 'voluptas', 40);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (52, 15, 11, 'rem', 13);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (53, 11, 4, 'occaecati', 25);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (54, 4, 2, 'vel', 27);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (55, 1, 8, 'nihil', 47);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (56, 12, 5, 'reiciendis', 48);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (57, 9, 9, 'id', 38);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (58, 13, 9, 'iure', 44);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (59, 16, 1, 'totam', 39);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (60, 3, 10, 'nesciunt', 4);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (61, 1, 8, 'repudiandae', 7);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (62, 2, 11, 'facere', 21);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (63, 11, 1, 'sed', 45);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (64, 9, 3, 'non', 8);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (65, 16, 4, 'ipsam', 10);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (66, 11, 2, 'nemo', 31);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (67, 15, 11, 'dolorem', 16);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (68, 12, 10, 'exercitationem', 10);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (69, 4, 8, 'fugiat', 13);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (70, 3, 7, 'unde', 12);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (71, 15, 6, 'enim', 26);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (72, 13, 3, 'est', 12);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (73, 14, 8, 'ipsa', 3);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (74, 4, 10, 'distinctio', 39);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (75, 18, 4, 'dolores', 22);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (76, 10, 6, 'veritatis', 3);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (77, 3, 2, 'nisi', 19);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (78, 1, 11, 'cupiditate', 11);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (79, 13, 8, 'fugit', 42);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (80, 2, 3, 'quibusdam', 3);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (81, 14, 2, 'animi', 8);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (82, 11, 1, 'corrupti', 24);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (83, 16, 4, 'ex', 14);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (84, 18, 7, 'perferendis', 34);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (85, 11, 8, 'eveniet', 15);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (86, 1, 11, 'itaque', 14);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (87, 18, 2, 'maxime', 16);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (88, 14, 7, 'error', 34);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (89, 11, 5, 'illum', 25);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (90, 2, 9, 'aliquid', 11);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (91, 17, 2, 'hic', 25);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (92, 10, 12, 'voluptatem', 43);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (93, 4, 4, 'quae', 33);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (94, 15, 3, 'possimus', 30);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (95, 1, 7, 'explicabo', 26);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (96, 2, 10, 'porro', 3);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (97, 12, 12, 'repellat', 35);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (98, 18, 5, 'voluptates', 4);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (99, 16, 6, 'saepe', 34);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (100, 6, 8, 'quod', 17);


#
# TABLE STRUCTURE FOR: tax_categories
#

DROP TABLE IF EXISTS `tax_categories`;

CREATE TABLE `tax_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `expiration_days` int(10) unsigned NOT NULL DEFAULT 30,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `tax_categories` (`id`, `name`, `expiration_days`) VALUES (1, 'rerum', 39);
INSERT INTO `tax_categories` (`id`, `name`, `expiration_days`) VALUES (2, 'aut', 31);
INSERT INTO `tax_categories` (`id`, `name`, `expiration_days`) VALUES (3, 'ratione', 59);
INSERT INTO `tax_categories` (`id`, `name`, `expiration_days`) VALUES (4, 'dolorem', 38);
INSERT INTO `tax_categories` (`id`, `name`, `expiration_days`) VALUES (5, 'nesciunt', 39);
INSERT INTO `tax_categories` (`id`, `name`, `expiration_days`) VALUES (6, 'optio', 54);
INSERT INTO `tax_categories` (`id`, `name`, `expiration_days`) VALUES (7, 'doloribus', 60);
INSERT INTO `tax_categories` (`id`, `name`, `expiration_days`) VALUES (8, 'voluptatum', 47);
INSERT INTO `tax_categories` (`id`, `name`, `expiration_days`) VALUES (9, 'porro', 35);
INSERT INTO `tax_categories` (`id`, `name`, `expiration_days`) VALUES (10, 'in', 34);


#
# TABLE STRUCTURE FOR: taxes
#

DROP TABLE IF EXISTS `taxes`;

CREATE TABLE `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tax_category_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `amount` decimal(30,0) NOT NULL,
  `issued_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_TAX_CATEGORY_idx` (`tax_category_id`),
  KEY `FK_USER_ID` (`user_id`),
  CONSTRAINT `FK_TAX_CAT` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`),
  CONSTRAINT `FK_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (101, 8, 81, '31450', '1983-09-30 10:14:08');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (103, 3, 77, '33381', '2003-01-20 03:43:56');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (104, 4, 43, '80337', '2018-02-17 09:03:47');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (105, 1, 22, '89385', '1998-01-02 18:47:41');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (106, 9, 92, '25644', '2004-05-03 17:04:28');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (107, 5, 89, '82213', '1976-07-19 04:13:44');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (108, 10, 26, '45613', '1997-09-25 12:18:20');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (112, 2, 39, '88653', '2017-01-08 21:55:53');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (113, 3, 31, '5612', '2003-10-07 07:33:32');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (114, 5, 8, '32861', '1994-03-30 02:32:24');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (116, 6, 10, '37045', '1971-05-21 14:46:44');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (117, 9, 34, '23677', '1992-12-05 09:45:07');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (119, 3, 64, '58692', '1991-12-23 04:28:51');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (123, 1, 60, '44765', '2001-04-30 21:18:17');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (124, 2, 67, '79472', '2002-02-02 08:51:24');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (125, 7, 22, '6449', '2003-07-10 22:24:10');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (127, 2, 91, '45291', '2000-10-17 13:41:00');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (128, 10, 89, '18964', '2016-11-18 11:04:20');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (129, 5, 27, '56169', '2000-01-06 21:51:32');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (132, 1, 100, '94687', '2014-07-20 03:29:28');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (133, 6, 88, '10755', '1999-03-01 15:32:10');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (138, 8, 17, '78712', '2003-07-21 07:16:02');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (139, 5, 43, '95060', '2017-09-28 19:57:18');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (140, 9, 5, '92998', '1992-02-21 20:25:10');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (142, 2, 87, '74143', '2000-04-20 17:32:45');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (147, 8, 29, '22231', '2008-04-26 19:10:38');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (148, 6, 54, '97727', '2011-03-14 03:17:37');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (150, 1, 81, '73195', '1976-06-07 13:22:32');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (154, 9, 46, '96207', '2015-02-26 15:44:50');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (161, 8, 72, '67765', '1991-03-12 03:04:28');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (163, 3, 99, '60080', '2003-11-04 13:21:57');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (168, 6, 54, '56553', '1983-07-15 03:39:39');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (169, 1, 97, '13651', '2001-06-06 01:01:35');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (171, 1, 75, '88169', '1997-10-22 07:29:05');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (173, 2, 54, '35949', '1988-10-06 16:56:06');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (174, 8, 38, '85138', '1976-06-17 08:21:01');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (176, 5, 97, '56961', '2007-12-16 10:26:02');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (178, 5, 100, '99700', '2018-03-06 04:26:28');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (181, 2, 76, '83740', '2003-02-08 02:19:59');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (183, 7, 7, '86653', '1998-03-08 15:01:04');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (184, 3, 90, '54159', '1998-03-18 20:42:07');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (185, 6, 85, '62709', '2013-06-09 04:28:37');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (186, 3, 81, '93480', '1979-03-22 23:41:07');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (195, 1, 56, '98443', '1996-04-25 14:46:40');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (197, 2, 61, '80399', '1986-12-08 01:39:12');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (199, 7, 91, '2641', '2011-07-10 16:51:17');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (200, 9, 57, '3785', '2010-12-20 23:21:03');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `username`, `password`) VALUES (1, 'amanda86', '1c5763c6ee0b12b8539454c79915c99a563a6fd0');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (2, 'zjones', '5c3752c4e3e870a1c0d0ed5385ef220f02ccbaf7');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (3, 'eichmann.ferne', '6c014f3b5d6ff61c2f9aaac15a138ac39859153d');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (4, 'conn.jazlyn', '51c32c3fc5891e3c17117158e0b0616778172b6a');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (5, 'mya.quitzon', '32c94c53cd8fea49b9cd43dc1a6ed614f650e851');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (6, 'tevin32', '693abf3295d91049b490e00a73e15d4337654f5e');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (7, 'raquel12', '104c14445c58db96f9da5ef47921f355323e9cd6');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (8, 'glover.kamryn', 'e023dfa47f4659c47dfcee4b708422344cb962ba');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (9, 'kirlin.shanelle', '24974125165d953f28f5929fdf12924524b1b413');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (10, 'minerva.mueller', 'd3fcb08590f52499b360897ece2876a59c5d5978');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (11, 'letitia.christiansen', '73132d5eff28690c5e57850b98a46d279c8ca044');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (12, 'ena.deckow', '53b32bb5cfab2f1bed1045bd343eafb594122b7b');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (13, 'akuhic', '6a5ddc4555ec5f70b20ed4cf8a4873b3e57500b8');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (14, 'alia20', '37b592c06ba9e6e74464d71ba613096879c1de41');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (15, 'xbotsford', 'b56c9546e0c11cd159683d291a365f2407c9c0fe');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (16, 'kasey59', '40fac345601ff61328f6dcf1c3faf7ae77d0111e');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (17, 'furman76', '562406a7143b63000096fd7ad1a61e2f2510617a');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (18, 'keven.johnson', '1cdf4010aaef32f213b2ce5263d52ef4a8191c01');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (19, 'monahan.amari', '544c700a84abec6846ebf2b6a9bf3ec17256ffc7');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (20, 'romaine04', '246707408d9e0b3185a4540e6dbfb3ecdfd0310a');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (21, 'nbernier', 'daa501dd6fb05615592cafd6a7a837de334786a0');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (22, 'wava.weimann', '41367348002b522f790936658d485886bd48aad5');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (23, 'chandler33', '5117656b191f4ec67104b2de98b23f7185ea7295');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (24, 'loma18', '633ff8f8a8384188f42089d4ceda69e9ff6c1d0d');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (25, 'nterry', 'a0bfbd870ffc6dc4b7e35130d5c6e2e6f24b95dc');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (26, 'demario55', '2192762f2ff288b3bb6db2d0d1ba4cb4646386f4');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (27, 'moen.grady', '9e9202d675ec0ffc38fbed6a2c8cfbd161315f11');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (28, 'darrel43', '9e568e546092e596b27028a82d6476bd5ccc6f09');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (29, 'leann.kunze', '1b8c2c44405851fb09f1d3ce3c916d79300fa5c1');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (30, 'gislason.kendra', '83b80b4f32f235e6244de285765e178a4ba063d2');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (31, 'terrell82', 'd78be3fbcb91bac01bca139a41c83c9c8894c212');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (32, 'lambert.cummerata', 'c2bb5611aa1153a9307ceb1fba0ee6b3d9688686');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (33, 'wiza.michele', '0c4ed1d4cd5346d330c60a3da915158d496cb171');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (34, 'lawson.botsford', '68277c9c5158de10d42d2c593c537974997ab78d');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (35, 'predovic.chelsie', '2d7c9cd931c9bad9df2618c579362bf1a08e1c7e');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (36, 'werner.smith', '16ac183b37163982041f22d54e5c2aba11c4aa26');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (37, 'ujacobi', '08a14fc248ccbd8a36724280116b14ecb90d841f');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (38, 'vjaskolski', 'c21aed1b50669db4a419275a50eda0920aec21f2');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (39, 'mwelch', '4f8f8bf48642286bba56a65784d067c02fd502a0');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (40, 'jast.raegan', 'bdecd97eedf4e959490d695e4eb965c670de6fcb');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (41, 'nannie.gleason', '26d04c62cb88a8b5277b650720ee4923426973f5');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (42, 'haley.chance', 'cea35b4c5965e4f6d9ef3639c4c4b0089ef86cdf');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (43, 'jovani.klocko', '3fb1bf6d8452ca8228e8ead165a51a684517eb66');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (44, 'hills.hilton', 'e2033de33d869f135207aa4dbbf8cc25a6ddbdb3');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (45, 'vsenger', '564134726a12c0c043fc4045556f0e7ca028720b');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (46, 'tbruen', 'c6fa8d91a6ad640224db739c01484d6f432b5cc5');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (47, 'xcarter', 'a8ae880828bb7f508d27288caa725ebf12f14518');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (48, 'aileen.howe', '27b97d053741b3d04f62d23e4bbd485ea555ca69');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (49, 'rashad.fritsch', '273ada37abd0e578375df06bde29948a596577a7');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (50, 'sbins', '4f65ec3ea52c025e3d87f07d4737ee5cac6d7c41');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (51, 'chaya30', '63c7f6e3b9b2dc4074aad9d3954541def67dfd6c');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (52, 'montana.pacocha', 'c92a91e02e24070196dc44b50adf683c98d28669');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (53, 'jerrell20', 'a295a79926ea46574410a0fe2ace551c9a9e3357');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (54, 'qmonahan', 'e31fd52e59c6c8b587aa649386cde15670267af8');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (55, 'major.ernser', '67d90ee892144006605d437432ad59272f884b40');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (56, 'tkassulke', '056cf3f1447f4092f63fd17954fe8ed25bf7783f');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (57, 'josie.stoltenberg', '5f947be7e76af0cc6ab2d828a9184f4aacddc37a');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (58, 'valentine43', '0c6106b59f4fc3f5b8f534017037b6d15df63633');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (59, 'walter.clara', '409a80cf1882957a5196504db2ae760a32ac9ad2');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (60, 'leffler.sigrid', '4f3285f599ffabea34372843675a7f160dc9e679');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (61, 'plehner', 'eb0a99f3facbc377452cf4e3766d55e64b0ee1fe');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (62, 'fisher.adelle', '624010c8cf49c0636db9c411312d6ca3e3a99f82');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (63, 'considine.reyes', '428b25056658863c8e8b6b81b2683264ab02636b');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (64, 'carroll.tabitha', 'e801a36adeb80991281de8514731697174cd5765');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (65, 'calista11', '9b28ab47d3305b2340c66ec76dfe712858f1e654');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (66, 'kristina42', 'c3ec51eb9c5e1a4052f06caba09577f3fe4b0aee');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (67, 'alexandre86', '5ba329d188cee58b705c0397378eac26f3c170ae');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (68, 'carmine74', 'c3da3ab7bde815bf6c48b16aa3e34b6f0774001f');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (69, 'frankie67', '40564821208bbfd95f47ef9556833f565d51d138');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (70, 'ruecker.domenick', '123615ab9fe6da5e818de0bcd6dc9047d55d1870');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (71, 'kamron04', '332165f4d6eaecc6d406393223dfa122b127e3c5');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (72, 'green.amira', '00daa9bf747210b8a51e809666f1b45144698bfb');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (73, 'deckow.alivia', '0959bbccc225ba06a42427a504dd48340963bd86');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (74, 'nolan.levi', 'c27aa46cd2f7059303c3f13e600f14e762f46088');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (75, 'ttorp', '9e8d10f9c9ec2f35d568b8b8e32b3afe719d419b');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (76, 'kkoch', '0b987683f310e3a96bd151e43e7b4d806b9775c2');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (77, 'mollie.mayer', 'ab63ac737b4a33b0e650f66efd9f63d6e9e53b5a');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (78, 'blick.halie', 'c8cd5846c6b3a40ff2b8b231f7312f487c368a27');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (79, 'danielle48', 'cf68a1383c9c93062c4a3fdbdedc5633f50042ae');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (80, 'paula.anderson', '74bb746f5348d785d0f1d7bf580bb746cf230aff');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (81, 'yost.moses', '788dc77eb0d5e87167b75a7566fdc4b3ba611597');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (82, 'kendall69', 'a9f5820cbf21bd25f6e1883bd937ef899c013d0d');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (83, 'kreiger.lawrence', 'c17bfb2ca8ba5fe6ad0ce87c6721573b5892340a');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (84, 'howe.gail', '29b821d90f253257ef1efa399f2840af8c20eb97');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (85, 'dexter.marquardt', '9afa37804be9a037c7a436a23e0681247fa661b3');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (86, 'elian.ankunding', '4aa54259bff78f96f437c9171aa4327769d71de4');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (87, 'jabernathy', '552459987a2a3a1774fdd7a849645953c0536456');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (88, 'gibson.laurianne', 'b0159cd800317d1c97d084d1a856d4a8d4bb8d48');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (89, 'lrobel', 'a1b123f42a8db128a072830ff0d541ee6df85080');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (90, 'giovanni.hayes', '96afbf32ee0ede0644797fc77bebed0295b7c868');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (91, 'trey76', '8388994234b39e7884d5f9ac2937401bb95aa55f');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (92, 'joey.dibbert', '18d5f04bac3f901755dcb3507221665930f47506');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (93, 'do\'reilly', '8f73fdc4959219d0d9f497c0f53ea39c498d2338');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (94, 'eliane.mcclure', '396dcd5de9b6d9e25f1a161119040b48199a2404');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (95, 'volkman.loyce', '9dc5b6de64187a3dcd4b3ac89a9e7b3133b54867');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (96, 'welch.rosanna', 'abce1f96bcd69e2392b82a1e1d21970c79f08a56');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (97, 'king.mariam', 'e5a19269dcfbfb62c4a116922b8a890bbe38d30c');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (98, 'serena53', '29673409a1ee7956b47eba1eded777df958bd92d');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (99, 'balistreri.holly', '5f42f3add9a74473585363f196110aae56535be4');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (100, 'rey34', 'b2970df63c894f68adc52bac4f6aa343f1ac01b3');


#
# TABLE STRUCTURE FOR: users_information
#

DROP TABLE IF EXISTS `users_information`;

CREATE TABLE `users_information` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) NOT NULL,
  `tel_number` varchar(45) NOT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `personal_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_USER` (`user_id`),
  CONSTRAINT `FK_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (1, 'Danika', 'ratione', 'Kozey', '1-307-841-2667', NULL, NULL, 'moore.mackenzie@example.net', 1);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (2, 'Shad', 'voluptate', 'Predovic', '(571)695-4272x265', NULL, NULL, 'acrooks@example.net', 2);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (3, 'Reba', 'veritatis', 'Ondricka', '(587)529-1160', NULL, NULL, 'xharris@example.org', 3);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (4, 'Dashawn', 'est', 'Bergstrom', '466-855-0360x2202', NULL, NULL, 'lfritsch@example.net', 4);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (5, 'Lilliana', 'officiis', 'Ondricka', '388-542-8179', NULL, NULL, 'jackeline88@example.net', 5);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (6, 'Jennifer', 'dolorum', 'Schmidt', '(490)145-6924x891', NULL, NULL, 'kariane05@example.org', 6);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (7, 'Orie', 'nisi', 'Mitchell', '710-840-0279x0871', NULL, NULL, 'handerson@example.org', 7);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (8, 'Felton', 'ea', 'Lemke', '(950)279-6524', NULL, NULL, 'daugherty.devan@example.org', 8);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (9, 'Adrianna', 'blanditiis', 'Lesch', '762-296-3878x9415', NULL, NULL, 'wiegand.jaylon@example.com', 9);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (10, 'Ramon', 'reiciendis', 'Hermiston', '427.687.8851x278', NULL, NULL, 'feest.savion@example.org', 10);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (11, 'Foster', 'suscipit', 'Bayer', '1-026-753-7146x2313', NULL, NULL, 'owaelchi@example.net', 11);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (12, 'Verla', 'quia', 'Wisoky', '(218)327-0047x730', NULL, NULL, 'kiana.gorczany@example.org', 12);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (13, 'Arianna', 'ad', 'Gusikowski', '(008)415-1055x04766', NULL, NULL, 'hettinger.lennie@example.net', 13);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (14, 'Jewel', 'aut', 'Klein', '082.168.2620x995', NULL, NULL, 'maryam.kohler@example.org', 14);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (15, 'Cesar', 'nisi', 'Veum', '1-960-828-7415x457', NULL, NULL, 'kristopher.hayes@example.com', 15);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (16, 'Jessika', 'earum', 'Ortiz', '(696)388-1657', NULL, NULL, 'jonas07@example.com', 16);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (17, 'Darrell', 'magni', 'Waters', '(722)546-3325', NULL, NULL, 'bernhard.myron@example.com', 17);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (18, 'Madge', 'vel', 'O\'Hara', '903-064-3315x6150', NULL, NULL, 'bobbie.steuber@example.com', 18);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (19, 'Orrin', 'est', 'Franecki', '1-349-709-6737x746', NULL, NULL, 'aschoen@example.net', 19);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (20, 'Jonas', 'veritatis', 'Leannon', '803-133-3348', NULL, NULL, 'theresia.kovacek@example.com', 20);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (21, 'Marian', 'autem', 'Cartwright', '767.127.1190x30375', NULL, NULL, 'estehr@example.org', 21);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (22, 'Elinore', 'ut', 'Moen', '(067)063-3489x63698', NULL, NULL, 'macie.murazik@example.org', 22);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (23, 'Minerva', 'et', 'Hickle', '079-596-8417x19490', NULL, NULL, 'emmanuel97@example.org', 23);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (24, 'Clemmie', 'officiis', 'Pfannerstill', '(098)461-1631', NULL, NULL, 'murphy.leif@example.net', 24);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (25, 'Korbin', 'id', 'Ryan', '1-498-353-8161x7569', NULL, NULL, 'wilderman.vada@example.net', 25);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (26, 'Mable', 'possimus', 'Grady', '868-041-6943', NULL, NULL, 'kole.walter@example.com', 26);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (27, 'Trace', 'natus', 'Robel', '1-455-141-4360x01846', NULL, NULL, 'lubowitz.opal@example.com', 27);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (28, 'Rosetta', 'unde', 'Pollich', '481-141-3812', NULL, NULL, 'o\'hara.lura@example.net', 28);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (29, 'Carmella', 'ut', 'Farrell', '306.224.6275x531', NULL, NULL, 'uboehm@example.net', 29);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (30, 'Joesph', 'eius', 'Bergstrom', '1-432-402-8022x664', NULL, NULL, 'leuschke.eleazar@example.net', 30);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (31, 'Marian', 'architecto', 'Toy', '(271)652-2169', NULL, NULL, 'saul.gusikowski@example.com', 31);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (32, 'Sarai', 'impedit', 'Mosciski', '511.508.0087', NULL, NULL, 'sydnee71@example.org', 32);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (33, 'Gonzalo', 'maxime', 'Hermann', '1-293-422-0817', NULL, NULL, 'scollins@example.org', 33);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (34, 'Jack', 'natus', 'Gulgowski', '(989)109-0330x158', NULL, NULL, 'ruecker.grady@example.org', 34);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (35, 'Mitchell', 'voluptatibus', 'Streich', '325.997.9968x35374', NULL, NULL, 'mckenzie.keagan@example.com', 35);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (36, 'Veronica', 'velit', 'Brekke', '1-184-744-6382x5686', NULL, NULL, 'harvey.brooke@example.org', 36);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (37, 'Chanelle', 'dolorem', 'Auer', '(930)272-7177x5848', NULL, NULL, 'gerdman@example.org', 37);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (38, 'Dudley', 'a', 'Gusikowski', '258.830.7561x64663', NULL, NULL, 'pswaniawski@example.org', 38);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (39, 'Wade', 'molestiae', 'Miller', '1-282-519-1780', NULL, NULL, 'gabriel.breitenberg@example.net', 39);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (40, 'Shanie', 'sed', 'Effertz', '(219)483-5485x199', NULL, NULL, 'lemuel57@example.net', 40);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (41, 'Bethany', 'nulla', 'Bode', '06212197400', NULL, NULL, 'neva.olson@example.org', 41);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (42, 'Stanley', 'voluptates', 'Cruickshank', '+11(5)7996782093', NULL, NULL, 'piper.ratke@example.org', 42);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (43, 'Alexanne', 'nam', 'Hudson', '(463)246-6311x93059', NULL, NULL, 'hackett.johnathon@example.net', 43);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (44, 'Elenora', 'repellat', 'Wunsch', '00847014945', NULL, NULL, 'dena55@example.org', 44);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (45, 'Camron', 'nobis', 'Carter', '339.530.3351', NULL, NULL, 'maryam04@example.net', 45);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (46, 'Janessa', 'qui', 'Emmerich', '(721)201-4142', NULL, NULL, 'otho.padberg@example.org', 46);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (47, 'Andy', 'placeat', 'Rath', '+56(4)9766334120', NULL, NULL, 'veum.avis@example.net', 47);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (48, 'Donald', 'et', 'Rath', '(969)646-1122', NULL, NULL, 'christophe83@example.com', 48);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (49, 'Monroe', 'tenetur', 'Brakus', '(684)190-2299x2064', NULL, NULL, 'dgorczany@example.org', 49);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (50, 'Kacey', 'et', 'Maggio', '1-527-873-0220x834', NULL, NULL, 'jgreenholt@example.org', 50);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (51, 'Leopoldo', 'debitis', 'Kris', '803-109-0421', NULL, NULL, 'fdouglas@example.com', 51);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (52, 'Arlie', 'omnis', 'Bogan', '019.026.7546', NULL, NULL, 'mcglynn.amely@example.org', 52);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (53, 'Christy', 'labore', 'Roberts', '(288)410-6558x08443', NULL, NULL, 'jstiedemann@example.org', 53);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (54, 'Pete', 'quas', 'Jast', '1-394-650-3135x870', NULL, NULL, 'torp.marquis@example.org', 54);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (55, 'Dan', 'odit', 'Dach', '601.875.3475', NULL, NULL, 'boris.robel@example.net', 55);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (56, 'Allene', 'doloribus', 'Kuvalis', '643-235-3388', NULL, NULL, 'rhahn@example.org', 56);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (57, 'Reba', 'reprehenderit', 'Murazik', '(226)805-8096', NULL, NULL, 'batz.rosamond@example.net', 57);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (58, 'Una', 'a', 'Jacobi', '(066)279-0350x436', NULL, NULL, 'dgoldner@example.com', 58);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (59, 'Kathlyn', 'laudantium', 'Weimann', '(030)341-4039', NULL, NULL, 'roselyn76@example.org', 59);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (60, 'Harrison', 'sed', 'Rohan', '1-593-495-7415', NULL, NULL, 'clyde.o\'hara@example.com', 60);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (61, 'Elian', 'pariatur', 'Osinski', '254.982.1894x741', NULL, NULL, 'wyman73@example.net', 61);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (62, 'Gussie', 'sit', 'Osinski', '523.153.3039x961', NULL, NULL, 'vblanda@example.com', 62);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (63, 'Elias', 'repellendus', 'Reichel', '1-554-161-5212x5467', NULL, NULL, 'colleen55@example.com', 63);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (64, 'Dwight', 'odit', 'Crona', '1-927-413-5562x02755', NULL, NULL, 'mina.lehner@example.net', 64);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (65, 'Efrain', 'ipsa', 'Towne', '664.640.3950', NULL, NULL, 'gennaro75@example.org', 65);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (66, 'Robert', 'ratione', 'Keeling', '(608)126-6698x6187', NULL, NULL, 'esther86@example.com', 66);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (67, 'Nicole', 'inventore', 'Hermann', '(580)409-6044x11773', NULL, NULL, 'marlene17@example.net', 67);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (68, 'Vena', 'repudiandae', 'Murray', '831.535.7198', NULL, NULL, 'qupton@example.com', 68);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (69, 'Hillary', 'quaerat', 'Olson', '616-969-6900', NULL, NULL, 'jesus.jacobs@example.com', 69);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (70, 'Quinton', 'cum', 'Lesch', '(015)427-9222', NULL, NULL, 'bo\'reilly@example.com', 70);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (71, 'Madyson', 'et', 'Lebsack', '033-458-8502', NULL, NULL, 'rgrimes@example.org', 71);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (72, 'Paige', 'non', 'Trantow', '+07(0)9916173587', NULL, NULL, 'pspinka@example.org', 72);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (73, 'Marty', 'ipsa', 'Torphy', '580.653.8295', NULL, NULL, 'jensen40@example.net', 73);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (74, 'Lucio', 'possimus', 'D\'Amore', '1-249-980-8029x293', NULL, NULL, 'towne.mina@example.net', 74);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (75, 'Randy', 'repudiandae', 'Bernhard', '261.902.1568x06294', NULL, NULL, 'jakubowski.maverick@example.com', 75);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (76, 'Dorothy', 'rerum', 'Thiel', '956-047-5970x7078', NULL, NULL, 'csanford@example.net', 76);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (77, 'Fletcher', 'et', 'Schinner', '(405)578-0709', NULL, NULL, 'victoria.mertz@example.org', 77);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (78, 'Jerrod', 'cumque', 'Veum', '565.380.5731x4701', NULL, NULL, 'theresa.aufderhar@example.com', 78);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (79, 'Marjory', 'eum', 'Mertz', '(766)014-6820', NULL, NULL, 'margarete.nienow@example.com', 79);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (80, 'Jalyn', 'et', 'Watsica', '298-801-0380', NULL, NULL, 'jmcglynn@example.com', 80);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (81, 'Madeline', 'magni', 'Dickinson', '724-249-1815', NULL, NULL, 'dahlia.abernathy@example.net', 81);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (82, 'Abdullah', 'eum', 'Dicki', '+69(2)7982863746', NULL, NULL, 'effertz.dorcas@example.net', 82);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (83, 'Horace', 'mollitia', 'Berge', '1-637-146-8760x84055', NULL, NULL, 'quinten95@example.org', 83);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (84, 'Sylvester', 'ducimus', 'Oberbrunner', '(663)174-5053', NULL, NULL, 'zemlak.candice@example.org', 84);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (85, 'Wellington', 'expedita', 'Pollich', '206-021-2779x54036', NULL, NULL, 'rschneider@example.com', 85);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (86, 'Salvador', 'ex', 'Christiansen', '(107)673-1865', NULL, NULL, 'wilma.witting@example.com', 86);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (87, 'Torrey', 'est', 'Effertz', '119.143.4247x3946', NULL, NULL, 'monahan.javonte@example.com', 87);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (88, 'Katlyn', 'cupiditate', 'Smitham', '039.290.7975x4514', NULL, NULL, 'emery96@example.net', 88);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (89, 'Raina', 'dolorum', 'Wisozk', '(990)065-6209x06896', NULL, NULL, 'crolfson@example.org', 89);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (90, 'Guiseppe', 'alias', 'Yost', '(518)063-7982x943', NULL, NULL, 'kattie95@example.com', 90);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (91, 'Daryl', 'eveniet', 'Morissette', '229-825-4379', NULL, NULL, 'akeem32@example.org', 91);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (92, 'Napoleon', 'illo', 'Bogisich', '(223)308-1290', NULL, NULL, 'kaycee24@example.org', 92);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (93, 'Callie', 'eum', 'Schultz', '663-811-3567x6175', NULL, NULL, 'joey82@example.net', 93);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (94, 'Maurice', 'reiciendis', 'Cronin', '(764)733-8409', NULL, NULL, 'leuschke.estel@example.org', 94);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (95, 'Mabelle', 'hic', 'DuBuque', '308-924-2654x7375', NULL, NULL, 'hilbert.thiel@example.org', 95);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (96, 'Demarcus', 'unde', 'Becker', '1-682-390-5143', NULL, NULL, 'jhickle@example.org', 96);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (97, 'Mable', 'totam', 'O\'Kon', '1-270-489-3573', NULL, NULL, 'neil59@example.org', 97);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (98, 'Mary', 'ullam', 'Cummings', '1-122-539-3776x69620', NULL, NULL, 'lauriane.fahey@example.com', 98);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (99, 'Jazmyn', 'et', 'Ruecker', '898-465-2353x073', NULL, NULL, 'steve.simonis@example.com', 99);
INSERT INTO `users_information` (`id`, `first_name`, `middle_name`, `last_name`, `tel_number`, `address`, `personal_information`, `email`, `user_id`) VALUES (100, 'Lorenzo', 'sed', 'Adams', '(678)510-9118x2348', NULL, NULL, 'istrosin@example.net', 100);


