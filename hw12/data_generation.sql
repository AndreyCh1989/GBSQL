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
  CONSTRAINT `FK_SITUATION_CAT` FOREIGN KEY (`life_situation_category_id`) REFERENCES `life_situation_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (1, 'enim', 10);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (2, 'dolor', 4);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (3, 'nemo', 9);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (4, 'ut', 1);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (5, 'deleniti', 9);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (6, 'adipisci', 1);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (7, 'rem', 9);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (8, 'est', 7);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (9, 'reiciendis', 1);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (10, 'fugit', 8);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (11, 'quisquam', 10);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (12, 'voluptatem', 6);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (13, 'aut', 7);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (14, 'delectus', 1);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (15, 'reprehenderit', 10);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (16, 'accusantium', 9);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (17, 'eum', 3);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (18, 'eos', 8);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (19, 'iure', 6);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (20, 'qui', 7);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (21, 'dicta', 3);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (22, 'in', 9);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (23, 'tempora', 4);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (24, 'culpa', 2);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (25, 'recusandae', 6);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (26, 'vitae', 8);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (27, 'aspernatur', 10);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (28, 'et', 1);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (29, 'ab', 1);
INSERT INTO `life_situations` (`id`, `name`, `life_situation_category_id`) VALUES (30, 'sit', 9);



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

INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (1, 17, 8, 'omnis', 22);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (2, 5, 8, 'fugit', 25);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (3, 1, 10, 'consequatur', 16);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (4, 10, 11, 'qui', 4);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (5, 15, 1, 'consectetur', 1);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (6, 12, 12, 'est', 5);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (7, 20, 12, 'aperiam', 12);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (8, 1, 7, 'velit', 2);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (9, 15, 3, 'corporis', 28);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (10, 16, 12, 'a', 11);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (11, 15, 9, 'animi', 27);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (12, 9, 3, 'explicabo', 20);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (13, 20, 6, 'nulla', 29);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (14, 15, 3, 'odio', 4);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (15, 14, 2, 'quo', 12);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (16, 17, 4, 'et', 18);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (17, 2, 1, 'assumenda', 8);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (18, 6, 9, 'natus', 11);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (19, 9, 12, 'ipsum', 29);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (20, 13, 3, 'deleniti', 30);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (21, 7, 1, 'quam', 22);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (22, 5, 2, 'aut', 25);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (23, 13, 4, 'sed', 29);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (24, 7, 5, 'dicta', 8);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (25, 11, 5, 'non', 23);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (26, 7, 7, 'beatae', 6);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (27, 13, 6, 'ex', 10);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (28, 3, 2, 'magni', 5);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (29, 4, 5, 'nihil', 19);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (30, 17, 2, 'eveniet', 2);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (31, 19, 8, 'ratione', 22);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (32, 14, 7, 'ut', 20);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (33, 3, 4, 'quia', 11);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (34, 19, 5, 'quis', 19);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (35, 3, 4, 'quibusdam', 20);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (36, 12, 2, 'in', 19);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (37, 16, 8, 'repellendus', 10);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (38, 3, 3, 'voluptatem', 1);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (39, 13, 3, 'amet', 26);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (40, 12, 9, 'nam', 30);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (41, 17, 3, 'dolorum', 25);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (42, 8, 11, 'pariatur', 28);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (43, 3, 7, 'quas', 29);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (44, 6, 7, 'nostrum', 23);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (45, 16, 11, 'vitae', 12);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (46, 20, 3, 'delectus', 9);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (47, 18, 1, 'soluta', 10);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (48, 14, 9, 'ducimus', 27);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (49, 9, 5, 'veritatis', 16);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (50, 19, 12, 'labore', 2);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (51, 7, 10, 'perferendis', 2);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (52, 12, 7, 'cum', 10);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (53, 20, 11, 'veniam', 15);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (54, 13, 3, 'tempore', 11);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (55, 8, 12, 'provident', 22);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (56, 20, 1, 'debitis', 27);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (57, 6, 1, 'id', 7);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (58, 16, 8, 'fuga', 28);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (59, 9, 10, 'numquam', 8);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (60, 11, 1, 'accusamus', 26);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (61, 10, 5, 'autem', 27);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (62, 15, 10, 'quidem', 19);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (63, 13, 10, 'nobis', 16);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (64, 3, 6, 'dolore', 30);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (65, 4, 2, 'voluptas', 21);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (66, 16, 8, 'esse', 1);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (67, 10, 6, 'sint', 2);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (68, 8, 12, 'dolor', 11);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (69, 18, 9, 'repellat', 11);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (70, 18, 4, 'cupiditate', 20);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (71, 19, 1, 'iure', 22);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (72, 6, 1, 'maiores', 14);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (73, 19, 6, 'vero', 21);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (74, 4, 12, 'minus', 20);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (75, 13, 12, 'architecto', 24);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (76, 8, 3, 'corrupti', 18);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (77, 20, 4, 'odit', 18);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (78, 13, 8, 'mollitia', 10);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (79, 9, 11, 'unde', 22);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (80, 2, 10, 'maxime', 27);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (81, 6, 12, 'suscipit', 4);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (82, 11, 6, 'laborum', 11);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (83, 10, 11, 'illo', 5);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (84, 14, 7, 'aliquid', 17);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (85, 12, 6, 'tenetur', 4);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (86, 7, 4, 'perspiciatis', 6);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (87, 13, 3, 'nemo', 22);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (88, 9, 3, 'hic', 18);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (89, 11, 7, 'sapiente', 10);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (90, 14, 4, 'dolores', 15);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (91, 1, 12, 'eum', 23);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (92, 6, 8, 'magnam', 15);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (93, 6, 5, 'sequi', 9);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (94, 15, 8, 'quod', 12);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (95, 10, 7, 'laudantium', 30);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (96, 1, 7, 'laboriosam', 18);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (97, 8, 7, 'culpa', 30);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (98, 3, 5, 'atque', 17);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (99, 3, 10, 'eligendi', 27);
INSERT INTO `services` (`id`, `service_category_id`, `gov_agency_id`, `name`, `life_situation_id`) VALUES (100, 11, 4, 'dolorem', 11);


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
# обновляю адреса
update users_information
set address='{"city":"Moscow", "street":"Moyakovskaya", "house":1, "room": 1}';
update users_information set address=JSON_SET(address, '$.house', FLOOR(RAND()*1000 + 1), '$.room', FLOOR(RAND()*1000 + 1));
# обновляю данные
update users_information
set personal_information='{"pasport_number":1, "issued":"Moscow"}';
update users_information
set personal_information=JSON_SET(
	personal_information, 
    '$.pasport_number', FLOOR(RAND()*100000 + 1000000), 
    '$.issued', (case floor(rand()*3) 
         when 0 then 'Moscow' 
         when 1 then 'Samara' 
         when 2 then 'Rostov' 
         end));


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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (1, '1988-08-15 05:46:02', 63, 2, '', 20);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (2, '1985-09-29 13:59:20', 72, 2, '', 32);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (3, '1975-01-20 13:44:41', 55, 1, '', 89);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (4, '1983-02-18 12:17:24', 78, 1, '', 81);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (5, '1974-06-08 14:15:49', 63, 2, '', 11);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (6, '1980-10-11 19:02:07', 98, 2, '', 10);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (7, '1974-01-08 10:09:35', 93, 2, '', 6);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (8, '1983-02-16 15:04:48', 43, 1, '', 4);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (9, '1975-04-08 22:37:43', 99, 2, '', 65);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (10, '1999-09-30 08:58:14', 81, 2, '', 8);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (11, '1999-06-28 20:51:02', 68, 1, '', 47);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (12, '1995-06-09 09:23:15', 48, 2, '', 47);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (13, '1985-01-20 16:19:45', 30, 1, '', 20);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (14, '1983-09-22 20:19:00', 63, 2, '', 90);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (15, '1986-07-04 03:39:40', 72, 1, '', 24);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (16, '2000-02-19 12:56:57', 4, 2, '', 40);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (17, '1976-09-22 16:54:16', 2, 1, '', 7);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (18, '1987-02-25 08:03:42', 2, 2, '', 60);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (19, '2017-04-26 07:07:52', 56, 2, '', 91);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (20, '1971-03-15 21:35:31', 65, 1, '', 72);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (21, '1988-05-21 09:23:10', 76, 2, '', 7);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (22, '1985-12-07 19:27:05', 87, 2, '', 2);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (23, '1976-05-23 10:50:30', 57, 2, '', 45);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (24, '1996-09-03 03:43:19', 76, 2, '', 25);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (25, '1981-06-12 13:18:10', 20, 1, '', 50);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (26, '2014-12-15 08:59:38', 29, 2, '', 68);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (27, '1984-07-02 14:05:38', 98, 1, '', 6);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (28, '1981-01-26 23:29:15', 75, 1, '', 86);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (29, '2003-08-31 05:07:33', 71, 1, '', 2);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (30, '1978-02-18 18:28:15', 58, 1, '', 56);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (31, '2010-11-26 02:15:05', 68, 1, '', 28);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (32, '1985-12-16 04:10:55', 86, 1, '', 64);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (33, '2003-07-08 12:44:15', 75, 2, '', 61);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (34, '2016-05-25 21:55:43', 86, 2, '', 21);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (35, '1972-03-10 04:43:01', 100, 1, '', 83);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (36, '2005-08-22 05:26:18', 21, 2, '', 55);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (37, '2015-12-26 04:13:55', 36, 2, '', 74);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (38, '2006-06-04 13:16:44', 99, 2, '', 97);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (39, '2003-07-03 13:10:38', 42, 1, '', 69);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (40, '1983-09-22 23:14:10', 83, 1, '', 52);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (41, '1982-10-23 04:54:48', 81, 1, '', 51);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (42, '1984-08-14 12:56:47', 60, 1, '', 15);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (43, '2016-08-22 03:13:09', 57, 2, '', 13);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (44, '2017-11-28 19:18:05', 61, 2, '', 20);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (45, '1999-04-16 19:06:31', 49, 1, '', 59);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (46, '1987-10-11 03:59:46', 62, 1, '', 55);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (47, '1994-05-19 00:36:49', 16, 2, '', 24);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (48, '2007-03-01 13:52:00', 42, 1, '', 5);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (49, '1992-08-31 19:31:27', 6, 1, '', 32);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (50, '2007-07-01 16:02:34', 79, 1, '', 49);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (51, '2017-05-26 00:42:02', 44, 2, '', 5);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (52, '2016-03-23 06:07:22', 92, 1, '', 60);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (53, '1997-12-25 22:48:52', 93, 2, '', 33);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (54, '2008-08-06 15:12:32', 44, 1, '', 26);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (55, '2006-12-10 07:43:57', 21, 2, '', 72);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (56, '1982-11-04 13:12:24', 47, 1, '', 65);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (57, '2000-07-28 08:31:01', 95, 2, '', 3);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (58, '1994-02-22 20:00:20', 42, 2, '', 93);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (59, '2009-02-16 00:05:40', 28, 2, '', 71);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (60, '1992-10-28 08:23:18', 58, 1, '', 81);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (61, '1988-04-05 09:25:03', 83, 2, '', 93);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (62, '1998-02-25 02:20:08', 4, 1, '', 97);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (63, '1997-02-24 20:09:02', 8, 2, '', 41);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (64, '2010-05-15 04:32:56', 79, 1, '', 6);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (65, '1972-04-27 12:19:21', 49, 1, '', 92);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (66, '1975-11-07 02:09:06', 87, 1, '', 56);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (67, '1989-12-22 12:30:46', 38, 1, '', 66);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (68, '1988-06-04 23:58:38', 58, 1, '', 70);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (69, '2002-01-13 05:07:38', 76, 2, '', 89);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (70, '1972-04-28 22:41:00', 5, 1, '', 73);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (71, '1986-03-22 04:35:54', 38, 2, '', 64);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (72, '2017-02-20 03:45:26', 27, 1, '', 88);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (73, '2008-07-28 10:15:53', 14, 1, '', 78);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (74, '1984-06-23 20:44:03', 58, 2, '', 80);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (75, '2010-08-11 18:29:45', 29, 1, '', 23);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (76, '1996-08-20 11:54:12', 23, 2, '', 81);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (77, '1981-06-04 03:10:55', 43, 2, '', 99);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (78, '2007-11-16 02:35:06', 32, 1, '', 51);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (79, '2006-10-02 10:46:39', 9, 2, '', 43);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (80, '2002-06-18 14:18:37', 71, 1, '', 60);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (81, '2018-11-17 09:21:15', 51, 2, '', 86);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (82, '1996-07-16 09:08:37', 84, 1, '', 18);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (83, '2017-06-25 23:43:55', 57, 1, '', 4);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (84, '1993-10-12 03:55:23', 26, 1, '', 28);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (85, '1970-08-26 08:41:11', 39, 1, '', 95);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (86, '2002-05-30 20:02:24', 31, 1, '', 94);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (87, '1993-09-01 11:35:26', 79, 2, '', 18);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (88, '1981-02-28 12:09:17', 65, 2, '', 28);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (89, '1997-09-19 13:46:28', 92, 1, '', 44);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (90, '1995-10-01 23:54:32', 66, 2, '', 57);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (91, '1987-03-05 14:16:17', 57, 2, '', 2);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (92, '2004-12-23 16:29:40', 7, 1, '', 74);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (93, '1993-12-05 07:25:40', 12, 1, '', 65);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (94, '2002-01-16 07:13:11', 19, 2, '', 24);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (95, '1977-08-14 07:29:14', 69, 1, '', 25);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (96, '2003-01-20 20:31:03', 39, 1, '', 70);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (97, '2014-01-11 15:32:06', 11, 2, '', 23);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (98, '1978-11-08 14:45:23', 34, 2, '', 14);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (99, '1988-05-20 22:39:51', 6, 1, '', 29);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (100, '2017-01-23 20:49:58', 77, 2, '', 59);
# заполняем payment_information
update payments
set payment_information='{"uid":1, "bank":"Sberbank"}';
update payments
set payment_information=JSON_SET(
	payment_information, 
    '$.uid', FLOOR(RAND()*10000000 + 100000000), 
    '$.bank', (case floor(rand()*3) 
         when 0 then 'Sberbank' 
         when 1 then 'WTB' 
         when 2 then 'Alfa' 
         end));

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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (1, 5, 98, '82079', '1994-09-12 16:13:43');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (2, 3, 20, '67257', '1990-11-29 11:25:39');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (3, 8, 95, '49770', '2003-04-14 05:41:21');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (4, 2, 58, '31246', '2000-02-10 01:10:09');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (5, 9, 23, '63619', '1996-03-22 17:00:00');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (6, 7, 83, '79831', '1977-10-12 23:41:05');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (7, 5, 42, '61910', '1982-05-16 06:11:55');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (8, 1, 55, '62461', '2005-07-29 19:07:19');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (9, 1, 71, '67249', '2004-01-03 21:11:37');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (10, 9, 51, '60969', '2007-04-22 10:39:34');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (11, 2, 60, '41597', '1995-12-31 17:54:26');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (12, 2, 87, '57798', '2012-09-13 18:46:14');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (13, 4, 10, '65987', '1981-11-01 07:19:24');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (14, 6, 87, '81213', '1980-06-08 08:49:25');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (15, 6, 35, '78672', '2004-03-19 19:30:14');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (16, 9, 82, '15774', '2007-04-28 00:14:22');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (17, 6, 25, '64707', '1970-04-24 15:13:06');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (18, 4, 59, '54691', '2001-06-14 17:14:20');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (19, 7, 98, '61246', '2018-09-11 02:46:27');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (20, 1, 47, '42309', '2005-04-09 14:22:33');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (21, 7, 68, '46455', '2018-04-24 14:30:43');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (22, 4, 13, '96579', '1972-11-12 23:13:32');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (23, 3, 87, '59949', '2007-02-21 10:55:45');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (24, 7, 58, '68002', '2015-09-05 00:00:20');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (25, 1, 37, '82350', '2002-06-17 13:53:03');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (26, 8, 63, '14209', '1999-03-27 11:47:45');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (27, 9, 83, '75860', '1982-07-01 18:25:14');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (28, 4, 60, '17556', '1973-07-30 04:16:05');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (29, 7, 32, '98321', '1976-07-16 09:25:11');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (30, 6, 53, '9413', '2016-06-08 22:41:17');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (31, 8, 74, '20470', '1997-06-03 12:30:11');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (32, 5, 58, '43456', '2012-01-04 06:00:41');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (33, 2, 90, '88489', '1988-11-05 09:53:16');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (34, 8, 32, '85154', '1986-12-24 14:57:59');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (35, 3, 34, '52206', '1991-11-01 20:40:07');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (36, 6, 49, '69242', '2013-11-13 06:18:47');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (37, 9, 18, '52817', '2011-04-21 12:12:55');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (38, 4, 37, '58697', '1996-04-06 03:36:17');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (39, 8, 17, '75797', '2005-01-05 06:44:24');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (40, 10, 34, '7117', '1990-08-02 19:17:26');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (41, 3, 21, '65147', '1973-12-07 17:37:24');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (42, 10, 14, '32532', '1973-02-02 23:13:01');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (43, 1, 33, '71955', '2017-11-05 01:37:19');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (44, 2, 20, '74320', '1973-03-21 18:24:50');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (45, 10, 7, '64774', '1981-08-24 17:55:36');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (46, 6, 31, '63287', '1994-07-30 11:24:31');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (47, 3, 97, '1232', '1992-08-23 04:21:25');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (48, 2, 82, '78660', '1991-11-30 15:14:22');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (49, 5, 66, '36147', '1989-11-07 11:36:35');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (50, 3, 90, '79516', '2001-07-26 13:42:33');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (51, 5, 86, '97848', '1993-05-23 03:39:20');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (52, 5, 67, '71749', '2000-03-29 21:12:43');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (53, 8, 52, '13354', '1989-07-03 23:20:10');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (54, 8, 68, '65201', '2006-01-18 12:08:28');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (55, 6, 7, '78792', '1985-07-07 17:24:22');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (56, 3, 6, '57481', '2003-09-16 04:29:17');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (57, 4, 51, '1378', '1974-10-27 23:38:20');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (58, 7, 54, '45359', '1979-04-14 18:14:48');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (59, 4, 82, '91150', '1990-02-25 03:31:11');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (60, 7, 74, '19107', '2009-02-03 02:44:39');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (61, 3, 92, '23588', '2000-07-18 02:35:15');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (62, 5, 69, '93910', '1996-12-26 12:33:37');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (63, 7, 60, '38611', '2009-08-24 21:01:13');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (64, 6, 49, '87463', '1976-07-18 12:47:02');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (65, 5, 97, '30423', '2005-04-07 01:02:40');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (66, 10, 66, '1818', '1988-03-12 06:51:23');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (67, 7, 93, '86064', '1994-01-08 12:26:16');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (68, 4, 88, '77873', '2006-03-31 19:55:57');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (69, 5, 13, '43345', '1971-04-24 07:48:50');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (70, 3, 50, '93714', '1985-03-06 14:23:43');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (71, 10, 71, '95317', '1978-01-25 15:48:42');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (72, 2, 69, '66176', '1983-12-28 01:14:06');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (73, 9, 9, '22091', '1995-11-07 22:21:04');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (74, 5, 24, '72466', '2016-07-15 08:08:54');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (75, 8, 31, '29021', '1972-06-19 11:33:24');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (76, 4, 90, '4111', '1974-09-15 17:55:08');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (77, 2, 22, '43823', '1978-12-31 17:38:26');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (78, 2, 77, '56734', '1984-11-09 10:26:07');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (79, 4, 46, '30070', '2019-02-20 15:51:18');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (80, 6, 78, '99741', '2018-12-02 15:59:23');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (81, 6, 32, '74673', '1979-10-22 17:16:40');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (82, 10, 13, '53997', '2002-02-24 05:46:44');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (83, 5, 46, '52888', '2017-04-14 11:31:44');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (84, 4, 61, '23999', '1988-01-14 03:25:41');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (85, 9, 83, '18988', '1992-04-26 12:23:07');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (86, 7, 99, '74880', '2008-01-03 17:24:32');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (87, 9, 34, '3721', '1985-10-03 12:50:16');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (88, 7, 56, '20667', '1970-12-17 03:14:25');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (89, 2, 10, '80368', '2007-05-27 15:35:17');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (90, 8, 7, '5371', '2010-12-21 06:02:43');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (91, 3, 92, '83549', '1978-06-01 22:33:43');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (92, 3, 69, '39172', '2017-10-03 07:39:20');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (93, 1, 21, '44881', '2012-04-19 10:17:07');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (94, 5, 18, '56205', '1988-02-25 00:17:35');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (95, 7, 59, '90002', '1977-01-29 06:16:59');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (96, 10, 82, '95603', '2016-03-05 14:06:13');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (97, 4, 62, '18977', '1982-01-24 15:15:10');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (98, 7, 71, '36300', '1977-02-25 11:45:08');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (99, 2, 68, '47000', '2014-06-12 11:13:30');
INSERT INTO `taxes` (`id`, `tax_category_id`, `user_id`, `amount`, `issued_datetime`) VALUES (100, 1, 43, '8729', '1982-04-13 14:16:50');