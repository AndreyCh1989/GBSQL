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
INSERT INTO `payed_object_types` (`id`, `name`) VALUES (3, 'fine');


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

INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (1, '2005-11-20 21:32:19', 62, 2, '', 84);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (2, '2006-05-14 00:27:06', 93, 1, '', 69);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (3, '1982-11-22 23:27:58', 28, 3, '', 94);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (4, '1994-01-22 09:40:38', 37, 3, '', 85);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (5, '2006-05-26 02:03:35', 98, 3, '', 86);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (6, '2009-04-26 18:04:29', 85, 3, '', 42);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (7, '1993-08-24 12:53:13', 61, 3, '', 52);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (8, '1997-03-24 15:15:53', 46, 1, '', 96);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (9, '1989-06-30 09:41:17', 62, 2, '', 44);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (10, '1989-03-29 03:47:04', 81, 1, '', 45);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (11, '1975-12-20 07:52:41', 83, 1, '', 76);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (12, '2011-07-10 11:10:29', 44, 2, '', 41);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (13, '1971-05-17 21:27:23', 45, 3, '', 65);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (14, '1973-03-25 17:44:02', 66, 1, '', 82);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (15, '2016-06-18 16:06:20', 60, 3, '', 80);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (16, '2001-02-14 01:04:17', 47, 2, '', 70);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (17, '1980-08-25 21:12:36', 70, 2, '', 53);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (18, '1987-09-03 04:45:30', 10, 2, '', 57);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (19, '1971-06-20 18:23:23', 82, 3, '', 63);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (20, '1978-09-02 17:53:11', 67, 2, '', 95);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (21, '1989-04-07 09:54:10', 98, 2, '', 70);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (22, '2008-05-26 22:53:56', 14, 2, '', 28);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (23, '2016-03-06 23:01:11', 60, 3, '', 78);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (24, '1999-08-25 10:50:01', 23, 2, '', 43);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (25, '2003-02-13 03:18:41', 2, 2, '', 55);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (26, '1972-05-08 21:48:05', 65, 3, '', 15);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (27, '1972-10-23 10:39:33', 45, 3, '', 42);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (28, '1974-10-15 12:18:11', 28, 3, '', 75);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (29, '1978-10-13 13:23:09', 81, 2, '', 81);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (30, '2019-03-14 05:45:01', 83, 1, '', 52);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (31, '1976-12-10 16:06:35', 84, 1, '', 95);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (32, '1990-04-30 17:08:06', 64, 3, '', 59);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (33, '1976-09-07 19:39:55', 45, 3, '', 97);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (34, '2019-03-16 18:01:17', 67, 2, '', 87);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (35, '1990-06-27 06:42:35', 56, 2, '', 92);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (36, '2018-07-16 19:58:39', 31, 3, '', 24);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (37, '2016-02-24 17:18:21', 76, 2, '', 69);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (38, '2012-06-22 13:35:10', 72, 3, '', 48);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (39, '2005-11-02 12:12:56', 94, 2, '', 45);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (40, '1988-10-26 11:00:08', 49, 2, '', 4);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (41, '1977-11-22 00:52:04', 7, 2, '', 15);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (42, '1996-04-14 13:12:01', 50, 2, '', 50);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (43, '1990-10-28 03:12:56', 19, 1, '', 5);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (44, '1983-10-03 06:43:51', 70, 1, '', 77);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (45, '1978-05-27 04:29:55', 77, 2, '', 4);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (46, '2000-11-25 18:39:31', 64, 3, '', 85);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (47, '2007-04-13 00:13:22', 79, 1, '', 24);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (48, '2014-07-17 11:43:09', 9, 1, '', 74);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (49, '2000-06-28 16:30:05', 45, 1, '', 37);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (50, '2019-01-31 18:29:55', 63, 2, '', 15);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (51, '2012-10-26 08:16:54', 48, 3, '', 36);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (52, '1980-01-19 11:06:07', 14, 2, '', 9);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (53, '1973-06-09 01:34:47', 1, 1, '', 77);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (54, '2012-07-25 01:59:49', 76, 3, '', 88);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (55, '2000-07-07 06:10:17', 13, 3, '', 28);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (56, '1974-03-29 23:41:55', 51, 3, '', 33);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (57, '1994-01-18 07:24:41', 59, 3, '', 33);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (58, '1974-02-14 14:17:34', 97, 3, '', 76);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (59, '2009-06-28 14:28:09', 96, 1, '', 76);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (60, '1973-09-11 05:15:26', 30, 2, '', 75);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (61, '2009-07-30 17:34:01', 39, 2, '', 92);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (62, '1978-07-30 04:34:42', 41, 3, '', 21);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (63, '2002-10-22 18:23:10', 33, 3, '', 66);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (64, '2016-09-10 03:37:26', 58, 2, '', 1);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (65, '2000-11-17 10:39:48', 78, 1, '', 9);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (66, '1989-04-04 22:44:35', 61, 3, '', 45);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (67, '2019-03-07 16:42:07', 3, 2, '', 45);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (68, '2007-09-02 00:38:52', 93, 3, '', 55);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (69, '2011-08-25 17:25:47', 23, 3, '', 50);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (70, '2019-09-02 02:42:54', 40, 1, '', 15);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (71, '1989-01-20 01:08:48', 9, 3, '', 90);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (72, '1999-09-09 01:26:06', 92, 2, '', 11);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (73, '2007-09-21 10:44:18', 73, 1, '', 72);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (74, '1994-07-26 20:21:48', 93, 1, '', 80);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (75, '2010-09-02 10:13:08', 75, 1, '', 36);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (76, '1991-04-08 22:42:35', 15, 1, '', 69);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (77, '1974-04-01 12:02:32', 14, 2, '', 40);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (78, '1998-10-15 09:13:25', 87, 3, '', 15);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (79, '1974-04-03 20:39:26', 45, 2, '', 8);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (80, '1983-02-02 03:07:03', 59, 1, '', 93);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (81, '1973-06-06 07:49:44', 98, 2, '', 87);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (82, '2007-06-10 01:10:13', 36, 1, '', 80);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (83, '1978-09-14 07:09:47', 12, 2, '', 55);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (84, '2003-03-10 09:14:26', 91, 2, '', 38);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (85, '1977-11-04 04:27:25', 11, 2, '', 18);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (86, '1990-02-17 12:42:53', 90, 3, '', 81);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (87, '2008-10-06 09:36:58', 31, 3, '', 87);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (88, '1972-10-01 16:45:40', 67, 3, '', 56);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (89, '1989-04-15 04:03:02', 31, 2, '', 73);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (90, '1998-07-07 11:08:02', 95, 1, '', 13);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (91, '2012-01-25 14:15:48', 37, 2, '', 92);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (92, '1983-04-20 14:36:59', 41, 2, '', 34);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (93, '1981-03-12 21:36:40', 75, 3, '', 95);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (94, '1995-05-25 18:41:40', 9, 3, '', 64);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (95, '1985-06-26 23:57:08', 19, 3, '', 80);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (96, '1988-03-09 13:05:39', 30, 1, '', 40);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (97, '1974-02-13 09:52:24', 76, 2, '', 40);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (98, '1990-07-15 08:38:13', 15, 3, '', 18);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (99, '2001-01-15 08:53:16', 36, 3, '', 29);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (100, '1995-02-13 08:50:19', 35, 1, '', 4);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (101, '1988-05-05 12:03:37', 31, 2, '', 43);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (102, '1998-08-08 23:07:27', 16, 1, '', 53);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (103, '1980-05-07 18:51:34', 90, 1, '', 10);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (104, '1998-12-25 17:04:41', 70, 3, '', 15);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (105, '2005-09-21 00:23:06', 77, 1, '', 19);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (106, '2016-02-05 23:02:28', 53, 1, '', 48);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (107, '2017-08-24 11:28:02', 81, 2, '', 91);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (108, '1978-05-31 01:11:03', 61, 1, '', 51);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (109, '1993-10-11 12:38:53', 75, 3, '', 1);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (110, '2012-04-20 13:13:36', 90, 2, '', 94);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (111, '2002-12-25 04:27:19', 37, 1, '', 35);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (112, '1992-01-19 08:55:24', 97, 1, '', 44);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (113, '1988-03-16 08:27:25', 67, 2, '', 89);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (114, '2012-10-27 14:04:12', 65, 3, '', 93);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (115, '2005-04-23 02:36:54', 81, 2, '', 23);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (116, '2013-01-20 22:30:24', 30, 2, '', 54);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (117, '2001-08-29 20:29:17', 46, 2, '', 22);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (118, '1997-04-27 15:19:49', 16, 1, '', 30);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (119, '1972-07-08 09:14:01', 75, 2, '', 15);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (120, '2006-03-13 08:38:32', 96, 3, '', 43);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (121, '2004-11-03 21:40:26', 77, 3, '', 85);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (122, '1999-11-26 23:26:17', 68, 3, '', 36);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (123, '1994-09-09 09:10:45', 47, 2, '', 11);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (124, '2016-10-01 13:24:30', 59, 2, '', 82);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (125, '2007-04-09 00:52:51', 57, 3, '', 65);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (126, '1972-07-14 07:10:21', 43, 1, '', 69);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (127, '2017-07-11 16:08:41', 92, 1, '', 55);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (128, '2013-07-20 21:43:00', 11, 2, '', 63);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (129, '2008-08-01 00:40:05', 22, 2, '', 18);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (130, '1979-09-28 21:22:06', 13, 1, '', 3);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (131, '1980-03-16 02:15:50', 13, 1, '', 21);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (132, '1979-03-27 14:56:12', 83, 3, '', 12);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (133, '1978-08-09 12:20:45', 27, 2, '', 58);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (134, '2005-07-17 15:50:09', 4, 2, '', 5);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (135, '2014-06-09 17:22:04', 57, 3, '', 96);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (136, '1970-11-19 11:56:38', 6, 3, '', 70);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (137, '2001-11-05 16:22:31', 44, 3, '', 26);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (138, '2017-05-20 14:43:33', 85, 1, '', 44);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (139, '1987-05-16 20:39:46', 86, 1, '', 16);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (140, '2003-05-08 00:27:35', 29, 1, '', 84);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (141, '2015-07-23 00:59:56', 21, 3, '', 37);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (142, '2009-11-05 14:11:50', 27, 2, '', 25);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (143, '2018-02-08 23:29:34', 82, 1, '', 11);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (144, '1975-02-14 19:37:36', 27, 1, '', 86);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (145, '1992-07-29 14:32:08', 43, 3, '', 11);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (146, '2013-03-21 12:22:38', 100, 2, '', 27);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (147, '1971-02-15 18:54:00', 56, 2, '', 20);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (148, '1978-09-02 23:58:42', 34, 2, '', 62);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (149, '1991-09-18 09:06:34', 95, 1, '', 96);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (150, '1978-12-21 20:15:23', 55, 3, '', 68);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (151, '1985-01-11 18:08:15', 27, 1, '', 36);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (152, '1998-12-11 14:13:15', 1, 3, '', 59);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (153, '1995-06-14 16:07:37', 90, 1, '', 37);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (154, '2006-11-23 09:54:37', 95, 3, '', 40);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (155, '1995-03-27 14:08:16', 13, 2, '', 66);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (156, '1975-01-06 18:34:24', 86, 2, '', 20);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (157, '1974-01-06 00:07:19', 9, 3, '', 58);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (158, '1982-02-17 14:47:59', 60, 3, '', 65);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (159, '1981-11-21 01:22:21', 65, 1, '', 84);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (160, '2008-06-01 02:11:33', 92, 1, '', 32);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (161, '1974-11-29 21:54:32', 24, 2, '', 85);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (162, '2014-07-20 06:35:31', 91, 2, '', 53);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (163, '2018-04-20 09:24:36', 7, 3, '', 40);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (164, '2016-03-05 03:21:16', 16, 1, '', 12);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (165, '1991-09-13 23:39:09', 15, 2, '', 40);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (166, '2000-07-18 00:57:05', 12, 2, '', 13);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (167, '2004-08-11 18:05:53', 57, 2, '', 39);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (168, '1996-02-14 00:57:32', 5, 2, '', 95);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (169, '1970-12-20 03:48:16', 1, 2, '', 84);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (170, '1987-07-04 04:45:33', 43, 3, '', 52);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (171, '1979-02-23 03:37:09', 26, 2, '', 92);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (172, '1980-10-15 05:34:29', 2, 1, '', 53);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (173, '2006-06-09 12:57:50', 37, 1, '', 86);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (174, '2011-12-15 04:27:45', 82, 3, '', 86);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (175, '1984-01-31 03:52:43', 11, 3, '', 95);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (176, '1992-06-17 01:34:53', 47, 3, '', 34);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (177, '2013-09-15 08:01:30', 23, 1, '', 88);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (178, '1988-05-23 07:50:45', 54, 3, '', 48);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (179, '1970-09-17 05:53:56', 86, 2, '', 82);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (180, '1994-08-28 13:50:45', 25, 2, '', 35);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (181, '1991-11-12 06:45:18', 41, 1, '', 91);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (182, '2011-05-28 14:59:41', 58, 3, '', 53);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (183, '2002-11-30 14:23:20', 47, 2, '', 15);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (184, '2014-08-24 19:04:00', 97, 1, '', 1);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (185, '2015-03-03 21:33:45', 49, 2, '', 58);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (186, '1985-11-03 15:20:43', 56, 2, '', 81);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (187, '2012-05-19 12:25:36', 83, 3, '', 8);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (188, '1975-03-30 13:20:33', 28, 2, '', 69);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (189, '2003-09-04 13:46:06', 25, 2, '', 8);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (190, '1984-10-30 05:10:16', 71, 2, '', 99);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (191, '1994-07-21 15:35:44', 19, 3, '', 8);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (192, '1986-10-07 15:07:50', 86, 1, '', 18);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (193, '2017-06-22 18:03:52', 59, 3, '', 85);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (194, '1995-01-30 16:55:51', 35, 3, '', 73);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (195, '2018-01-26 13:18:07', 17, 1, '', 53);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (196, '2013-04-21 19:20:37', 8, 3, '', 88);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (197, '2015-07-12 18:54:30', 6, 1, '', 48);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (198, '1982-02-17 14:20:39', 8, 2, '', 3);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (199, '2006-07-10 17:03:50', 39, 3, '', 69);
INSERT INTO `payments` (`id`, `datetime`, `object_id`, `payed_object_type_id`, `payment_information`, `user_id`) VALUES (200, '2006-04-28 22:42:03', 76, 1, '', 79);
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



#
# TABLE STRUCTURE FOR: fines
#

DROP TABLE IF EXISTS `fines`;

CREATE TABLE `fines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `amount` decimal(10,0) unsigned NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `issued_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (1, 87, '44093', '', '2013-08-16 11:10:53');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (2, 74, '40261', '', '1985-02-26 22:47:24');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (3, 64, '54705', '', '2005-03-19 06:39:41');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (4, 31, '89963', '', '2013-09-02 06:18:42');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (5, 80, '70532', '', '1996-12-26 06:24:26');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (6, 38, '36276', '', '2005-10-27 09:03:05');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (7, 80, '59087', '', '1981-05-03 00:03:46');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (8, 62, '23586', '', '2010-07-12 23:32:53');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (9, 91, '89251', '', '1972-12-04 10:42:07');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (10, 26, '29688', '', '2011-07-27 09:46:44');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (11, 2, '33648', '', '2004-05-03 04:28:04');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (12, 100, '30368', '', '2018-09-11 07:39:46');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (13, 65, '33480', '', '1973-12-16 23:16:35');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (14, 92, '80885', '', '1973-11-26 14:49:18');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (15, 100, '96226', '', '1999-03-11 06:01:06');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (16, 61, '21867', '', '1984-08-22 22:46:43');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (17, 94, '15992', '', '1973-02-07 16:51:57');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (18, 64, '32386', '', '1975-08-13 14:22:19');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (19, 4, '20507', '', '2009-12-06 00:35:00');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (20, 51, '64498', '', '1971-09-20 02:31:08');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (21, 58, '41508', '', '1990-01-12 10:28:47');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (22, 1, '4474', '', '1996-03-22 18:47:57');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (23, 98, '24235', '', '2004-06-24 11:51:20');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (24, 80, '26468', '', '1988-02-21 14:25:47');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (25, 55, '72743', '', '1984-01-11 10:55:30');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (26, 3, '30550', '', '2003-01-10 18:33:33');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (27, 6, '13027', '', '2017-02-27 08:28:37');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (28, 39, '1417', '', '1979-02-15 13:12:13');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (29, 56, '40643', '', '2005-07-27 23:07:15');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (30, 40, '17457', '', '2015-09-18 12:25:08');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (31, 45, '4386', '', '1982-09-19 17:21:12');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (32, 76, '36505', '', '1985-05-20 17:00:51');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (33, 53, '62970', '', '1978-11-27 13:14:12');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (34, 65, '37925', '', '1993-04-17 04:21:43');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (35, 43, '3028', '', '1998-04-16 01:43:35');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (36, 89, '27678', '', '2016-07-30 19:00:08');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (37, 61, '84823', '', '2016-06-18 13:54:16');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (38, 90, '38086', '', '2019-07-06 01:04:16');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (39, 67, '40230', '', '2014-06-13 23:52:27');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (40, 4, '68929', '', '1995-11-11 19:36:41');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (41, 36, '22416', '', '1982-10-15 12:46:38');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (42, 14, '61185', '', '1983-03-28 13:35:01');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (43, 75, '7208', '', '1995-07-13 22:53:24');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (44, 62, '12093', '', '2002-07-20 20:53:04');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (45, 26, '50852', '', '2017-11-22 16:29:17');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (46, 57, '43297', '', '1984-06-19 18:33:33');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (47, 38, '42990', '', '1991-01-29 04:07:08');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (48, 70, '42077', '', '1997-03-28 17:46:08');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (49, 38, '31768', '', '1999-03-03 16:25:15');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (50, 57, '66440', '', '1982-08-10 09:13:59');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (51, 25, '82772', '', '2000-07-19 09:45:54');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (52, 22, '60244', '', '1983-05-24 10:25:52');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (53, 77, '88612', '', '2016-02-05 17:37:55');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (54, 19, '41870', '', '1971-05-26 03:13:57');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (55, 50, '21960', '', '1978-10-05 17:08:37');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (56, 96, '6382', '', '2015-11-04 18:22:57');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (57, 49, '72743', '', '1999-08-30 13:34:26');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (58, 69, '19512', '', '1991-10-14 15:52:55');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (59, 97, '88282', '', '1974-02-17 19:58:44');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (60, 90, '30714', '', '1995-08-06 20:33:40');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (61, 90, '84365', '', '2005-06-13 02:32:55');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (62, 49, '6042', '', '2015-06-12 08:12:07');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (63, 26, '86424', '', '1996-02-21 02:34:56');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (64, 67, '89528', '', '2005-09-03 13:18:38');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (65, 76, '10019', '', '2014-05-30 06:44:25');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (66, 59, '30601', '', '2010-10-09 10:48:28');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (67, 3, '67904', '', '1987-05-18 18:25:45');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (68, 13, '32673', '', '1999-07-25 05:29:10');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (69, 3, '8870', '', '1984-01-24 06:25:15');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (70, 73, '5009', '', '1981-01-04 23:50:42');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (71, 27, '5496', '', '2005-07-21 02:19:00');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (72, 97, '33601', '', '1974-12-22 22:46:59');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (73, 94, '39138', '', '2003-11-07 08:38:04');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (74, 26, '3860', '', '1970-10-14 00:14:16');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (75, 19, '51691', '', '2010-10-13 15:33:34');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (76, 96, '88370', '', '2002-09-01 08:59:00');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (77, 16, '30713', '', '2013-07-23 04:24:22');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (78, 11, '66753', '', '1978-09-25 11:00:45');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (79, 17, '65906', '', '1971-08-15 20:59:22');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (80, 11, '8798', '', '2018-01-03 20:10:20');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (81, 27, '1903', '', '1996-04-30 01:29:39');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (82, 18, '65545', '', '2002-09-21 22:21:31');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (83, 49, '98252', '', '1999-05-10 23:41:52');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (84, 58, '99559', '', '1975-09-01 19:36:56');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (85, 15, '10244', '', '2001-06-05 20:41:11');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (86, 28, '31105', '', '1998-01-06 13:40:38');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (87, 83, '62032', '', '1996-04-24 09:15:55');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (88, 89, '19676', '', '1989-11-18 06:24:52');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (89, 7, '24976', '', '1995-10-26 14:09:53');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (90, 56, '16879', '', '1977-10-01 16:26:26');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (91, 85, '58261', '', '1996-11-03 05:32:05');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (92, 100, '61746', '', '1991-07-25 20:08:28');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (93, 13, '88773', '', '2000-06-17 15:42:26');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (94, 64, '36932', '', '1980-12-19 07:22:47');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (95, 5, '89133', '', '1992-12-02 12:27:14');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (96, 91, '88659', '', '1982-10-30 13:08:28');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (97, 4, '14056', '', '1989-08-25 06:05:55');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (98, 7, '13768', '', '1993-04-21 20:26:28');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (99, 44, '72408', '', '2004-11-17 04:21:45');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (100, 13, '38976', '', '1999-07-18 09:31:54');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (101, 27, '77510', '', '2009-12-17 07:54:56');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (102, 70, '57350', '', '1990-10-18 18:15:24');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (103, 90, '22387', '', '1970-02-08 09:41:16');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (104, 37, '30895', '', '2014-03-23 17:56:40');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (105, 72, '83245', '', '1997-08-30 02:54:20');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (106, 20, '98106', '', '1970-07-28 06:14:56');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (107, 69, '59005', '', '1981-11-17 18:05:38');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (108, 4, '56240', '', '1976-09-12 06:45:52');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (109, 86, '82260', '', '2007-02-25 14:12:50');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (110, 39, '33330', '', '2017-03-13 14:34:22');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (111, 37, '10573', '', '2000-09-02 05:15:12');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (112, 75, '48477', '', '2019-07-06 12:22:27');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (113, 39, '51459', '', '1984-07-01 07:06:04');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (114, 91, '63635', '', '1989-12-12 06:11:23');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (115, 89, '98887', '', '1995-03-06 06:22:10');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (116, 93, '77676', '', '1980-06-23 17:04:35');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (117, 28, '35219', '', '1973-08-03 06:54:45');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (118, 86, '77760', '', '1998-01-09 23:50:18');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (119, 60, '77734', '', '1973-08-23 11:47:30');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (120, 67, '19373', '', '2004-02-15 15:54:49');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (121, 70, '48104', '', '2017-05-20 07:34:58');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (122, 49, '69473', '', '1995-08-29 13:37:56');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (123, 68, '79998', '', '1994-10-21 04:19:06');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (124, 70, '20218', '', '1972-07-10 16:17:55');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (125, 30, '55200', '', '2015-12-14 04:03:16');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (126, 20, '20379', '', '2008-07-20 00:41:53');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (127, 93, '64288', '', '1998-07-24 13:31:56');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (128, 66, '94156', '', '1981-02-16 10:28:29');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (129, 17, '81800', '', '1985-09-18 15:40:44');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (130, 79, '48266', '', '2018-07-01 20:20:22');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (131, 46, '32892', '', '1975-08-18 06:02:34');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (132, 26, '37399', '', '1997-03-10 13:38:45');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (133, 47, '24925', '', '1971-06-20 20:36:32');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (134, 14, '24444', '', '1993-01-09 08:28:38');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (135, 98, '26377', '', '1986-10-13 13:48:32');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (136, 91, '25579', '', '2002-03-20 06:38:48');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (137, 59, '75445', '', '1988-06-28 13:30:25');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (138, 66, '62782', '', '2009-05-08 20:28:26');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (139, 79, '82992', '', '2001-09-07 01:01:56');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (140, 97, '22335', '', '1979-09-04 10:49:12');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (141, 62, '69265', '', '2001-07-22 06:50:52');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (142, 61, '58966', '', '2003-04-25 22:36:44');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (143, 11, '86327', '', '2000-10-18 15:59:02');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (144, 85, '26169', '', '2007-01-06 13:29:38');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (145, 41, '93087', '', '2011-01-24 23:04:28');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (146, 15, '9242', '', '1985-07-08 21:19:23');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (147, 60, '62865', '', '1976-05-29 17:14:14');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (148, 89, '5772', '', '1970-12-31 13:16:38');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (149, 17, '7617', '', '1989-06-02 03:16:58');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (150, 44, '80351', '', '2013-10-09 22:39:12');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (151, 98, '69088', '', '2019-08-01 12:53:57');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (152, 28, '59417', '', '1997-03-25 17:18:56');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (153, 93, '24609', '', '2017-09-08 12:08:59');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (154, 2, '59322', '', '1979-11-09 00:51:32');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (155, 82, '19357', '', '2005-06-30 14:13:11');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (156, 73, '74867', '', '1972-06-02 06:43:51');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (157, 81, '65905', '', '1973-08-27 10:44:17');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (158, 99, '40819', '', '1995-12-31 09:06:20');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (159, 3, '54210', '', '1992-05-25 04:13:44');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (160, 10, '29150', '', '2003-07-31 06:33:15');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (161, 77, '59176', '', '2017-11-26 12:07:47');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (162, 3, '63747', '', '1978-10-05 14:10:46');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (163, 51, '19807', '', '2001-08-14 23:48:11');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (164, 90, '62269', '', '2008-05-16 01:35:46');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (165, 16, '32800', '', '2002-04-18 05:40:21');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (166, 82, '55271', '', '1980-11-12 08:39:33');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (167, 36, '46980', '', '1985-10-03 21:14:42');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (168, 17, '33330', '', '1987-12-29 03:11:43');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (169, 94, '39981', '', '1985-09-27 16:12:18');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (170, 35, '64716', '', '2004-09-05 02:12:40');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (171, 90, '43733', '', '2012-03-23 23:59:26');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (172, 68, '29166', '', '1978-01-03 02:11:42');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (173, 29, '44440', '', '2006-02-20 12:10:14');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (174, 91, '55995', '', '1987-03-09 05:46:06');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (175, 64, '84880', '', '2006-10-15 21:06:45');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (176, 24, '84191', '', '2017-09-16 12:29:10');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (177, 54, '13256', '', '1992-01-28 18:47:10');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (178, 15, '15502', '', '2013-10-16 12:09:42');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (179, 5, '28988', '', '1978-07-31 13:30:34');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (180, 53, '62983', '', '1981-01-09 14:14:46');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (181, 9, '11270', '', '1991-10-15 07:47:11');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (182, 36, '67680', '', '1983-11-20 08:35:22');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (183, 95, '1408', '', '1983-04-27 17:08:36');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (184, 24, '40817', '', '1974-04-12 10:04:29');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (185, 10, '64050', '', '2016-03-09 09:00:14');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (186, 3, '83681', '', '2006-11-17 06:16:34');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (187, 57, '87775', '', '2000-05-03 09:15:38');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (188, 89, '24880', '', '1998-10-31 10:49:49');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (189, 54, '20056', '', '2013-11-19 11:45:25');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (190, 86, '61736', '', '2003-10-31 10:09:20');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (191, 3, '45049', '', '1983-04-01 13:31:44');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (192, 6, '22548', '', '1974-03-28 19:32:43');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (193, 23, '9612', '', '2009-04-08 06:26:39');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (194, 52, '20483', '', '1993-02-02 05:02:51');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (195, 32, '71009', '', '1972-06-05 23:44:53');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (196, 77, '58337', '', '1978-04-01 12:20:03');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (197, 76, '55539', '', '1988-12-15 05:11:20');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (198, 62, '6888', '', '2019-11-05 06:06:40');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (199, 44, '2776', '', '1996-05-14 02:21:57');
INSERT INTO `fines` (`id`, `user_id`, `amount`, `description`, `issued_datetime`) VALUES (200, 63, '37872', '', '1997-03-13 09:27:26');
# заполняем description
update fines
set description='{"uid":1}';
update fines
set description=JSON_SET(
	description, 
    '$.uid', FLOOR(RAND()*10000000 + 100000000));

