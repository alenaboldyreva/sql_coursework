#
# TABLE STRUCTURE FOR: amenties
#

DROP TABLE IF EXISTS `amenties`;

CREATE TABLE `amenties` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `yacht_id` bigint(20) unsigned NOT NULL,
  `dic_amenties_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `yacht_id` (`yacht_id`),
  KEY `dic_amenties_id` (`dic_amenties_id`),
  CONSTRAINT `dic_amenties_id_ibfk_3` FOREIGN KEY (`dic_amenties_id`) REFERENCES `dic_amenties` (`id`),
  CONSTRAINT `yacht_id_ibfk_3` FOREIGN KEY (`yacht_id`) REFERENCES `yachts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('1', '1', '1');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('2', '2', '2');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('3', '3', '3');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('4', '4', '4');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('5', '5', '5');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('6', '6', '6');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('7', '7', '7');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('8', '8', '8');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('9', '9', '9');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('10', '10', '10');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('11', '11', '11');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('12', '12', '12');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('13', '13', '13');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('14', '14', '14');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('15', '15', '15');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('16', '16', '1');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('17', '17', '2');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('18', '18', '3');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('19', '19', '4');
INSERT INTO `amenties` (`id`, `yacht_id`, `dic_amenties_id`) VALUES ('20', '20', '5');


#
# TABLE STRUCTURE FOR: callback_form
#

DROP TABLE IF EXISTS `callback_form`;

CREATE TABLE `callback_form` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_id_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('1', '31', '1999-01-14 21:59:00', '1986-11-13 06:50:35');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('2', '32', '1991-11-03 14:54:27', '2020-04-26 00:15:51');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('3', '33', '1997-04-11 12:24:03', '1985-05-26 21:10:30');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('4', '34', '2002-12-21 10:08:07', '1996-04-09 12:14:44');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('5', '37', '1975-08-01 09:13:20', '2020-01-07 08:22:59');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('6', '38', '1971-03-04 21:58:15', '1981-01-02 21:57:02');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('7', '39', '1976-04-12 01:35:04', '1997-12-30 18:47:50');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('8', '40', '2000-07-20 13:38:22', '2004-01-19 07:23:34');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('9', '41', '2012-11-10 19:42:52', '2004-06-19 10:00:50');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('10', '42', '2013-05-28 15:03:35', '1976-10-11 06:36:08');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('11', '44', '1998-01-26 05:49:50', '1993-09-16 13:39:57');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('12', '47', '1983-09-19 11:13:17', '1994-11-07 05:38:04');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('13', '48', '2003-04-04 12:24:14', '1996-11-25 10:31:30');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('14', '52', '2016-05-18 09:06:42', '1979-01-20 00:25:24');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('15', '53', '1980-07-29 02:43:27', '1981-07-14 08:02:43');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('16', '57', '1973-04-23 23:30:48', '1979-03-24 09:46:41');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('17', '58', '1990-01-29 11:25:07', '1971-02-06 23:08:23');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('18', '59', '2013-08-31 02:32:57', '1976-01-28 10:11:06');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('19', '31', '1998-07-24 00:07:01', '1986-10-25 21:01:40');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('20', '32', '2007-02-11 01:40:26', '2019-10-15 13:11:17');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('21', '33', '2000-07-04 19:36:24', '1972-06-03 10:13:23');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('22', '34', '2001-07-09 20:24:12', '1999-10-21 05:49:47');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('23', '37', '2017-10-14 07:41:31', '1986-10-23 23:52:17');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('24', '38', '1998-12-02 17:21:17', '1972-01-27 23:58:35');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('25', '39', '2019-11-06 03:37:54', '1986-07-18 12:40:20');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('26', '40', '2004-02-17 03:16:46', '2011-10-28 19:45:07');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('27', '41', '1997-06-02 03:42:41', '1993-09-13 12:00:09');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('28', '42', '2015-01-14 08:22:38', '2018-10-02 07:15:01');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('29', '44', '2010-07-26 13:36:44', '2012-08-22 13:16:56');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('30', '47', '1997-08-06 05:49:55', '1988-03-13 19:20:34');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('31', '48', '2009-12-29 13:11:16', '1996-01-14 13:34:25');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('32', '52', '2000-10-19 14:55:09', '1971-01-26 02:46:39');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('33', '53', '1999-03-13 10:41:17', '2000-04-29 17:17:48');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('34', '57', '1986-09-05 07:46:34', '1990-08-27 09:49:48');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('35', '58', '1972-04-06 00:12:33', '1992-02-08 07:50:51');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('36', '59', '1993-11-01 06:51:42', '1994-05-26 07:22:04');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('37', '31', '1998-12-08 08:04:00', '2002-01-17 16:19:04');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('38', '32', '2017-12-01 16:48:14', '1987-03-01 18:15:06');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('39', '33', '2001-02-13 11:00:13', '1990-04-08 10:34:36');
INSERT INTO `callback_form` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES ('40', '34', '1977-12-04 03:49:44', '1970-11-03 17:37:11');


#
# TABLE STRUCTURE FOR: countries
#

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_id` bigint(20) unsigned NOT NULL,
  `yacht_id` bigint(20) unsigned NOT NULL,
  `country_description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `yacht_id` (`yacht_id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `region_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`),
  CONSTRAINT `yacht_ibfk_1` FOREIGN KEY (`yacht_id`) REFERENCES `yachts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `countries` (`id`, `name`, `region_id`, `yacht_id`, `country_description`, `body`) VALUES ('1', 'facilis', '1', '1', 'Quidem ab omnis dolores sequi ab animi. Sit est repellendus sunt optio. Voluptate illo debitis enim. Minus minima ut vitae accusamus eligendi sed.', 'Sunt recusandae dolorem enim sint aliquid. Est dolor ex est. Nihil eaque ut nihil aut excepturi laborum. Et accusamus ut deserunt consequatur dolorem aut quasi.');
INSERT INTO `countries` (`id`, `name`, `region_id`, `yacht_id`, `country_description`, `body`) VALUES ('2', 'corrupti', '2', '2', 'Iure sint sint nihil sunt. Et commodi odit quod dolores vero. Quod expedita qui nihil voluptas. Et est dignissimos cum accusamus illo.', 'Autem dolor qui quibusdam dolorem voluptatem recusandae. Earum porro nobis eum blanditiis. Enim ab nobis architecto autem harum.');
INSERT INTO `countries` (`id`, `name`, `region_id`, `yacht_id`, `country_description`, `body`) VALUES ('3', 'quo', '3', '3', 'Perspiciatis laboriosam velit nihil aliquid. Consequatur ullam est ea necessitatibus iure. Debitis ipsa dolores nisi voluptas rerum aut.', 'Ut ab asperiores laborum et et at illo. Est natus occaecati velit quia quis alias. Delectus non voluptatem sit veritatis sed expedita.');
INSERT INTO `countries` (`id`, `name`, `region_id`, `yacht_id`, `country_description`, `body`) VALUES ('4', 'veniam', '4', '4', 'Quo omnis quis fugit omnis. Dolores et qui aliquid molestias qui. Eveniet voluptatibus laudantium quis sapiente minus at.', 'Et quia reiciendis cumque porro saepe. Quod fugiat qui odio illo odit. Quo temporibus voluptatem sed eligendi ut atque laudantium.');
INSERT INTO `countries` (`id`, `name`, `region_id`, `yacht_id`, `country_description`, `body`) VALUES ('5', 'quo', '5', '5', 'Animi fugiat nihil eum explicabo enim aut. Nam et et odio officiis magnam nemo quia.', 'Quaerat repellat qui explicabo. Rerum quidem earum beatae minima. Et blanditiis itaque eos fugit nobis. Omnis et enim accusantium consequuntur. Incidunt quaerat molestias aliquid itaque perspiciatis.');
INSERT INTO `countries` (`id`, `name`, `region_id`, `yacht_id`, `country_description`, `body`) VALUES ('6', 'sed', '6', '6', 'Assumenda fuga cum est. Consectetur quo in harum dolorum ea. Ut eligendi quia ratione doloremque at eum ex voluptatem.', 'Molestiae alias et quibusdam cum optio beatae rerum. Neque qui commodi ex numquam id reprehenderit velit. Cupiditate eligendi ad est iste tempore perferendis.');
INSERT INTO `countries` (`id`, `name`, `region_id`, `yacht_id`, `country_description`, `body`) VALUES ('7', 'ipsa', '7', '7', 'Aut excepturi et impedit recusandae quia. Illum non officia voluptatibus et. Voluptates amet deserunt optio inventore dolores aut blanditiis. Nostrum et est eligendi dolores debitis et perferendis. Laboriosam inventore dolorum labore atque enim soluta id.', 'Aliquid facere id vero nihil necessitatibus rerum quia. Incidunt ut ad eum rem in. Repudiandae officiis qui minima nemo. Veniam et minima maxime rem magni recusandae et. Est sint ipsa voluptates qui.');
INSERT INTO `countries` (`id`, `name`, `region_id`, `yacht_id`, `country_description`, `body`) VALUES ('8', 'tenetur', '8', '8', 'Ut nam facilis et est labore. Harum sit veritatis voluptatem esse vel quos numquam. Voluptates rerum voluptatem est. Eius laudantium nesciunt expedita est in.', 'Explicabo itaque a nobis consequatur saepe voluptas tempora. Ex autem in nisi qui ea. Inventore odio exercitationem nihil a enim totam inventore. Totam enim nisi eum aspernatur.');
INSERT INTO `countries` (`id`, `name`, `region_id`, `yacht_id`, `country_description`, `body`) VALUES ('9', 'aut', '9', '9', 'Quia voluptatem dolorem dolore officia dolorem. Doloremque ut sit ut. Et sed amet dolorum quis exercitationem.', 'Voluptas ab magni voluptas quis et pariatur. In nihil dolor eos. Nam qui qui nihil suscipit consequatur consequatur. Voluptatem officiis sint adipisci omnis reprehenderit et.');
INSERT INTO `countries` (`id`, `name`, `region_id`, `yacht_id`, `country_description`, `body`) VALUES ('10', 'est', '10', '10', 'Asperiores sed quasi accusantium ut. Soluta officiis veniam nihil. Tempora et non et dolorem animi.', 'Fugiat numquam ipsum libero aut officia quia architecto. Eos atque vel dolores amet soluta odit. Esse architecto provident et velit.');


#
# TABLE STRUCTURE FOR: customers
#

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `yacht_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `yacht_id` (`yacht_id`),
  CONSTRAINT `yacht_id_ibfk_1` FOREIGN KEY (`yacht_id`) REFERENCES `yachts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('31', 'enim', 'reyna78@example.net', '1', '1');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('32', 'magnam', 'lucas51@example.net', '96239', '2');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('33', 'nesciunt', 'bennie.hoeger@example.com', '0', '3');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('34', 'quia', 'amber.waelchi@example.com', '778794', '4');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('37', 'reprehenderit', 'kaci.haag@example.org', '99', '7');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('38', 'provident', 'corwin.tania@example.org', '45', '8');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('39', 'sit', 'lawson84@example.com', '103275', '9');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('40', 'harum', 'shanna.gleichner@example.net', '622', '10');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('41', 'aut', 'icassin@example.org', '870841', '11');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('42', 'alias', 'presley.hane@example.com', '735', '12');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('44', 'ea', 'ward.sigurd@example.com', '759485', '14');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('47', 'qui', 'kolson@example.org', '797', '17');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('48', 'fugiat', 'qankunding@example.net', '641', '18');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('52', 'itaque', 'lauriane.o\'connell@example.org', '41', '22');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('53', 'quasi', 'tmayert@example.net', '132009', '23');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('57', 'cum', 'kemmer.victor@example.org', '203', '27');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('58', 'dolorem', 'norberto.jakubowski@example.org', '413', '28');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `yacht_id`) VALUES ('59', 'excepturi', 'littel.elijah@example.net', '509718', '29');


#
# TABLE STRUCTURE FOR: dic_amenties
#

DROP TABLE IF EXISTS `dic_amenties`;

CREATE TABLE `dic_amenties` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'et', '1993-12-02 00:47:23', '1990-08-10 01:21:34');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'dolor', '2000-12-03 02:45:05', '2013-07-26 19:56:06');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'ut', '1997-12-28 05:43:30', '1999-03-20 07:26:51');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'et', '2012-02-18 02:06:57', '1995-03-14 12:48:16');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'est', '2011-04-27 02:29:16', '2014-05-26 08:08:36');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'repudiandae', '1972-06-13 04:38:42', '1974-03-08 20:42:20');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'rerum', '1990-05-15 03:42:38', '2015-01-21 07:02:39');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'qui', '2003-01-09 01:20:15', '2002-05-06 22:51:18');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'earum', '1979-09-21 04:40:11', '2020-02-17 21:44:52');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'sit', '1989-03-07 00:06:27', '1997-09-21 08:19:27');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'odit', '2002-12-20 20:46:39', '2007-01-15 03:00:07');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'aut', '1991-11-27 05:12:57', '1979-12-23 15:17:51');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'aut', '2012-12-07 02:52:52', '2001-05-12 00:10:25');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'labore', '2004-06-25 13:54:05', '2005-06-07 16:03:14');
INSERT INTO `dic_amenties` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'dolore', '1996-05-14 09:59:41', '1971-07-24 15:31:57');


#
# TABLE STRUCTURE FOR: dic_toys
#

DROP TABLE IF EXISTS `dic_toys`;

CREATE TABLE `dic_toys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'est', '1997-10-22 23:00:46', '1989-05-25 11:22:50');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'iure', '1990-10-27 17:43:45', '1975-06-20 03:05:52');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'culpa', '1985-12-12 20:45:31', '2014-09-18 23:09:17');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'magni', '1986-05-09 13:00:51', '1977-06-03 08:30:50');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'assumenda', '1996-05-15 04:27:17', '1988-05-06 08:34:46');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'eius', '2001-11-22 19:05:37', '2011-09-16 08:04:23');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'facilis', '1994-04-29 19:25:59', '1977-09-22 17:50:03');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'facere', '2009-12-24 07:45:43', '1979-02-19 09:01:09');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'rerum', '2005-12-04 16:50:55', '1979-02-08 03:47:21');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'aut', '2007-01-17 06:28:41', '1998-05-10 15:40:47');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'expedita', '1988-11-24 16:36:49', '1987-07-20 03:56:03');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'velit', '2017-02-04 15:15:27', '2000-09-23 21:26:49');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'est', '1988-02-16 18:13:48', '2008-02-22 00:41:05');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'excepturi', '1976-04-22 01:11:22', '1979-03-28 15:01:03');
INSERT INTO `dic_toys` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'totam', '1999-03-29 17:31:33', '2006-04-16 19:05:17');


#
# TABLE STRUCTURE FOR: faq
#

DROP TABLE IF EXISTS `faq`;

CREATE TABLE `faq` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `faq_category_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `faq_category_id` (`faq_category_id`),
  CONSTRAINT `faq_category_id_ibfk_1` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `faq` (`id`, `faq_category_id`, `body`) VALUES ('1', '1', 'Excepturi laboriosam praesentium reiciendis aliquam consectetur. Dolorum quis porro ducimus et velit. Nesciunt eum nemo sed ut dicta quidem. Quia quae totam ut non.');
INSERT INTO `faq` (`id`, `faq_category_id`, `body`) VALUES ('2', '2', 'Sit nihil dolore nulla quibusdam soluta nostrum enim in. Doloremque quisquam dolorem et distinctio nemo nostrum repudiandae.');
INSERT INTO `faq` (`id`, `faq_category_id`, `body`) VALUES ('3', '3', 'Sed recusandae quaerat adipisci est officiis. Omnis sunt explicabo perferendis ducimus ratione neque. Similique praesentium recusandae sit consequatur. Quibusdam dignissimos voluptatibus iusto et.');
INSERT INTO `faq` (`id`, `faq_category_id`, `body`) VALUES ('4', '4', 'Numquam blanditiis ab ea debitis repudiandae perferendis. Explicabo eos autem est maiores consequatur impedit aut. Ipsam ut amet facere aut sunt animi culpa voluptates. Amet necessitatibus accusamus at consequuntur tenetur aliquid.');
INSERT INTO `faq` (`id`, `faq_category_id`, `body`) VALUES ('5', '5', 'Ad dolores possimus hic minima. Blanditiis animi est dolores omnis officiis blanditiis quibusdam. Rerum sit repudiandae rerum ut. Et et nulla sunt.');
INSERT INTO `faq` (`id`, `faq_category_id`, `body`) VALUES ('6', '1', 'Suscipit qui autem vero aut accusantium. Autem cupiditate eaque sed et. Aut aperiam ut illum et totam nihil ex. Qui at itaque sint sit suscipit et fuga.');
INSERT INTO `faq` (`id`, `faq_category_id`, `body`) VALUES ('7', '2', 'Veniam ad non odio libero. Vel reprehenderit deleniti quaerat possimus blanditiis. Nisi voluptates odit aut sed modi eos. Tenetur in et saepe voluptatem. Sit nihil dolores veniam.');
INSERT INTO `faq` (`id`, `faq_category_id`, `body`) VALUES ('8', '3', 'Facilis facilis amet et ut. Cupiditate nobis qui blanditiis sapiente dolorum enim. In velit asperiores quia qui.');
INSERT INTO `faq` (`id`, `faq_category_id`, `body`) VALUES ('9', '4', 'Deleniti voluptatem maiores fugit quia et quia. Eos sed explicabo facilis sed totam officia. Dolores vel aperiam debitis. Fugiat officia consequatur provident eum quaerat amet doloribus et. Molestiae autem blanditiis corporis non.');
INSERT INTO `faq` (`id`, `faq_category_id`, `body`) VALUES ('10', '5', 'Nihil perspiciatis cumque possimus ea labore qui iusto. Voluptatem et ipsam nihil quae. Repellat soluta eos et exercitationem.');


#
# TABLE STRUCTURE FOR: faq_categories
#

DROP TABLE IF EXISTS `faq_categories`;

CREATE TABLE `faq_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faq_description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `faq_categories` (`id`, `name`, `faq_description`, `created_at`, `updated_at`) VALUES ('1', 'sunt', 'Molestiae et at excepturi nemo neque. Repellendus ut assumenda est adipisci fugit omnis. Suscipit vel ducimus voluptate repudiandae dolores. Qui earum assumenda assumenda id. Quis dolor nihil minus ea numquam dolorem.', '1978-01-26 08:52:38', '1995-03-15 09:00:55');
INSERT INTO `faq_categories` (`id`, `name`, `faq_description`, `created_at`, `updated_at`) VALUES ('2', 'dolores', 'Possimus voluptatem cum nesciunt autem dolores perferendis officia. Aut totam enim et. Ratione tempora illo neque. Odio dolore dignissimos cupiditate accusantium quia sed.', '1984-03-18 02:15:11', '2002-11-08 10:42:10');
INSERT INTO `faq_categories` (`id`, `name`, `faq_description`, `created_at`, `updated_at`) VALUES ('3', 'quasi', 'Aut voluptas qui odit magni pariatur earum id. Architecto optio voluptas porro corporis id qui. Doloremque rerum quasi quo animi facilis. Delectus voluptas dolor aut autem quos enim dicta.', '1999-10-07 02:51:15', '1985-06-27 18:05:17');
INSERT INTO `faq_categories` (`id`, `name`, `faq_description`, `created_at`, `updated_at`) VALUES ('4', 'veritatis', 'Ullam velit laborum et occaecati autem cupiditate. Consequatur corrupti architecto voluptas omnis laudantium reiciendis officiis. Qui distinctio ullam placeat quibusdam libero iure blanditiis praesentium. Deleniti corrupti qui iure dolores.', '1970-05-01 06:25:22', '2016-03-31 00:11:06');
INSERT INTO `faq_categories` (`id`, `name`, `faq_description`, `created_at`, `updated_at`) VALUES ('5', 'sunt', 'Optio velit rerum sint qui. Illo eum rem qui saepe. Tempora eveniet harum qui numquam nesciunt ea quisquam. Corporis exercitationem qui dignissimos tempora perspiciatis sit incidunt.', '2007-01-28 05:56:50', '2004-02-01 21:00:44');


#
# TABLE STRUCTURE FOR: locations
#

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `location_description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `country_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `locations` (`id`, `name`, `country_id`, `location_description`, `body`) VALUES ('1', 'inventore', '1', 'Corporis qui debitis ex id. Laboriosam hic autem sequi dolores eveniet.', 'Quis ut iusto perspiciatis. Expedita aut voluptatem veniam dolor et voluptatem. Officiis possimus esse aliquam explicabo.');
INSERT INTO `locations` (`id`, `name`, `country_id`, `location_description`, `body`) VALUES ('2', 'vel', '2', 'Similique molestiae laudantium tenetur sapiente delectus asperiores et cupiditate. Consequatur voluptatem sed perferendis est earum earum. Non sed delectus impedit temporibus excepturi. Asperiores ipsa magni cupiditate ut.', 'Vel magni dignissimos ut quaerat explicabo. Laboriosam iure in quia eos consequatur ex consequatur. Sunt est ad expedita est dolore. Eos maxime libero laboriosam aspernatur assumenda reiciendis dolores.');
INSERT INTO `locations` (`id`, `name`, `country_id`, `location_description`, `body`) VALUES ('3', 'sapiente', '3', 'Eaque quia similique eligendi qui. Qui delectus autem consequatur magnam. Repellat in nemo incidunt dolorem. Velit officiis cupiditate eum vel perferendis consequatur praesentium.', 'Enim odio iure odio. Placeat est illum provident architecto aspernatur ipsa magnam. Sunt quo sit corporis eum.');
INSERT INTO `locations` (`id`, `name`, `country_id`, `location_description`, `body`) VALUES ('4', 'dolorem', '4', 'Corporis illum velit esse cumque reprehenderit. Cupiditate quis et tempore atque accusantium commodi et. Mollitia et possimus sint consequatur omnis. Id quia sapiente unde sed.', 'Minima optio provident asperiores sint. At quod dolorum quis. Animi dolor praesentium aliquam dolores.');
INSERT INTO `locations` (`id`, `name`, `country_id`, `location_description`, `body`) VALUES ('5', 'aperiam', '5', 'Aut rerum et in voluptas similique. At non ut vel similique numquam. Quaerat et adipisci quasi sunt.', 'Porro ea temporibus natus rem quasi. Perspiciatis eveniet molestias sapiente. Voluptatem modi enim dolores tempore voluptatem sed soluta numquam.');
INSERT INTO `locations` (`id`, `name`, `country_id`, `location_description`, `body`) VALUES ('6', 'eos', '6', 'Non nisi dolores eligendi voluptas. Quos ratione ut earum atque nobis. Doloremque dicta dolore excepturi aut. Rerum et tempore ut reiciendis quod.', 'Numquam ut laborum sit delectus voluptate. Aliquid aspernatur asperiores aspernatur hic nostrum consequatur in. Magni voluptatem sit et reiciendis quam ipsa.');
INSERT INTO `locations` (`id`, `name`, `country_id`, `location_description`, `body`) VALUES ('7', 'explicabo', '7', 'Harum animi ea autem tenetur in. Laboriosam iure placeat quasi explicabo minima quos.', 'Ut ad omnis est voluptatem nobis veritatis ab. Libero quo fuga nam unde temporibus. Sunt vel sunt velit quae ipsa dolores enim tempora. Repellat dolores ut numquam accusantium enim quis.');
INSERT INTO `locations` (`id`, `name`, `country_id`, `location_description`, `body`) VALUES ('8', 'deleniti', '8', 'Laboriosam eum cumque eos. Aliquam earum qui eveniet molestias dicta. Placeat vel sequi asperiores reprehenderit et repudiandae amet. Ipsa vel illum distinctio quibusdam eos qui.', 'Deserunt ut neque vitae quaerat. Velit sint praesentium natus dolorum ut aperiam commodi. Nihil laborum nobis animi dolorem eos dicta. Molestiae dolore quisquam at.');
INSERT INTO `locations` (`id`, `name`, `country_id`, `location_description`, `body`) VALUES ('9', 'rerum', '9', 'Recusandae maxime dolores reiciendis sequi. Velit commodi eum mollitia cumque rerum consectetur. Eligendi animi aut numquam iste.', 'Placeat dolorum quae voluptatem. Modi nesciunt quia et dolore amet illo. Quae et enim sit esse.');
INSERT INTO `locations` (`id`, `name`, `country_id`, `location_description`, `body`) VALUES ('10', 'et', '10', 'Quisquam quam ut quia. Corrupti aut aliquid rerum ad repellat et totam at. Non dolor repellendus id eum. Libero sed sint sit veritatis libero atque sit.', 'Quia repellat et assumenda repellat. Dolor similique fuga molestiae repudiandae magni. Quo maxime ducimus quibusdam qui enim totam.');


#
# TABLE STRUCTURE FOR: regions
#

DROP TABLE IF EXISTS `regions`;

CREATE TABLE `regions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yacht_id` bigint(20) unsigned NOT NULL,
  `region_description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `regions` (`id`, `name`, `yacht_id`, `region_description`) VALUES ('1', 'dolore', '1', 'Repellat et voluptatibus dolorem eveniet labore aut est iste. Doloribus non rerum autem eos. Porro accusamus consequatur eius nihil dolorem quia. Aut corrupti asperiores minima voluptatem iste inventore aut.');
INSERT INTO `regions` (`id`, `name`, `yacht_id`, `region_description`) VALUES ('2', 'enim', '2', 'Numquam cum qui molestiae magni autem eligendi facilis laboriosam. Corporis adipisci qui saepe voluptatem ipsum et. Rem sed beatae aut voluptate. Doloremque temporibus aliquam repellendus autem maiores eos est.');
INSERT INTO `regions` (`id`, `name`, `yacht_id`, `region_description`) VALUES ('3', 'eos', '3', 'Corporis optio doloribus laudantium. Suscipit id officia voluptatem hic et ut. Exercitationem cum vero repudiandae nemo.');
INSERT INTO `regions` (`id`, `name`, `yacht_id`, `region_description`) VALUES ('4', 'placeat', '4', 'Soluta illo accusamus quidem earum voluptatibus iure. Aut sint facere sed nam ut aut. Assumenda necessitatibus impedit incidunt cum ratione. Et sint nam qui suscipit non qui. Illo non repellendus aut voluptatem commodi.');
INSERT INTO `regions` (`id`, `name`, `yacht_id`, `region_description`) VALUES ('5', 'quisquam', '5', 'Magnam aut nisi id suscipit voluptatem. Laboriosam magnam ut et dolores at repudiandae non et. Et officia eius ea aut.');
INSERT INTO `regions` (`id`, `name`, `yacht_id`, `region_description`) VALUES ('6', 'molestiae', '6', 'Eum magnam consequuntur necessitatibus voluptas et modi. Adipisci dolor tenetur optio non. Vitae modi amet quod voluptas aperiam dolor. Dignissimos harum ad doloribus autem earum eaque explicabo.');
INSERT INTO `regions` (`id`, `name`, `yacht_id`, `region_description`) VALUES ('7', 'dignissimos', '7', 'Fugit itaque sit ipsum. Laudantium et corporis quisquam dolores. Non omnis dolore quos quia. Consequatur voluptatem aliquam nisi placeat ut porro.');
INSERT INTO `regions` (`id`, `name`, `yacht_id`, `region_description`) VALUES ('8', 'quia', '8', 'Tempore ipsum ut odio aperiam. Optio quod nisi ut quod.');
INSERT INTO `regions` (`id`, `name`, `yacht_id`, `region_description`) VALUES ('9', 'sed', '9', 'Eos accusantium ipsa accusantium nisi. Earum et debitis ducimus nihil debitis quo. Officiis sunt eligendi qui eligendi commodi dolores. Distinctio ea quos repudiandae voluptas natus.');
INSERT INTO `regions` (`id`, `name`, `yacht_id`, `region_description`) VALUES ('10', 'ea', '10', 'Dolorem aspernatur quas et harum perferendis delectus. Provident incidunt quia deserunt totam. Molestias reiciendis provident non veritatis deserunt. Ducimus tenetur officiis consectetur omnis aperiam error enim.');


#
# TABLE STRUCTURE FOR: toys
#

DROP TABLE IF EXISTS `toys`;

CREATE TABLE `toys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `yacht_id` bigint(20) unsigned NOT NULL,
  `dic_toys_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `yacht_id` (`yacht_id`),
  KEY `dic_toys_id` (`dic_toys_id`),
  CONSTRAINT `dic_toys_id_ibfk_2` FOREIGN KEY (`dic_toys_id`) REFERENCES `dic_toys` (`id`),
  CONSTRAINT `yacht_id_ibfk_2` FOREIGN KEY (`yacht_id`) REFERENCES `yachts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('1', '1', '1');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('2', '2', '2');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('3', '3', '3');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('4', '4', '4');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('5', '5', '5');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('6', '6', '6');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('7', '7', '7');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('8', '8', '8');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('9', '9', '9');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('10', '10', '10');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('11', '11', '11');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('12', '12', '12');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('13', '13', '13');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('14', '14', '14');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('15', '15', '15');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('16', '16', '1');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('17', '17', '2');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('18', '18', '3');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('19', '19', '4');
INSERT INTO `toys` (`id`, `yacht_id`, `dic_toys_id`) VALUES ('20', '20', '5');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_name_lastname_idx` (`name`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('41', 'sed', 'Buckridge', 'olen83@example.org', '702');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('42', 'et', 'Turner', 'cristal.kihn@example.org', '997874');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('43', 'eos', 'Lehner', 'green60@example.com', '1');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('44', 'ut', 'Parisian', 'gusikowski.stacey@example.org', '875689');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('45', 'molestiae', 'Schamberger', 'pearlie.nader@example.org', '791353');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('46', 'rerum', 'Greenfelder', 'miller.verna@example.org', '159687');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('47', 'sed', 'Glover', 'wreichert@example.net', '360');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('49', 'dolores', 'Lynch', 'graham.fausto@example.com', '899542');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('50', 'voluptas', 'Bergstrom', 'emmitt.goldner@example.com', '474909');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('51', 'eveniet', 'Hermann', 'yveum@example.com', '6441401160');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('52', 'architecto', 'Koelpin', 'krajcik.katrina@example.com', '681');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('53', 'ut', 'Ankunding', 'rhilpert@example.com', '0');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('54', 'sed', 'Waelchi', 'magnolia.abernathy@example.com', '289');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('56', 'omnis', 'Hermann', 'opurdy@example.com', '956773');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('57', 'cum', 'Ratke', 'stevie.gottlieb@example.net', '84');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('58', 'voluptates', 'Bartell', 'kassulke.myrtis@example.net', '416514');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('59', 'vel', 'Lubowitz', 'ullrich.jermey@example.net', '372654');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('60', 'voluptatem', 'Balistreri', 'khalid40@example.com', '85');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('61', 'omnis', 'Stroman', 'aditya88@example.org', '616');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('63', 'tenetur', 'Williamson', 'durgan.norene@example.org', '275318');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('64', 'itaque', 'Ebert', 'kasey.lehner@example.com', '49');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('66', 'repellat', 'Padberg', 'laverna.swift@example.net', '15');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('68', 'quae', 'Waters', 'rlockman@example.net', '958');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('70', 'consequuntur', 'Goyette', 'asia36@example.com', '115734');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('71', 'aperiam', 'Braun', 'taylor08@example.net', '83');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('72', 'eum', 'Kunde', 'thalia68@example.com', '388817');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('73', 'sint', 'Hayes', 'carmen.von@example.com', '68');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('74', 'ipsa', 'Dickinson', 'louisa.lesch@example.net', '98');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('75', 'sed', 'Mueller', 'carlos.purdy@example.com', '639554');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('78', 'omnis', 'Spinka', 'emmerich.lenny@example.net', '868');
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `phone`) VALUES ('79', 'placeat', 'Dach', 'zwyman@example.org', '64');


#
# TABLE STRUCTURE FOR: yachts
#

DROP TABLE IF EXISTS `yachts`;

CREATE TABLE `yachts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `yachts` (`id`, `name`) VALUES ('1', 'aliquid');
INSERT INTO `yachts` (`id`, `name`) VALUES ('2', 'reprehenderit');
INSERT INTO `yachts` (`id`, `name`) VALUES ('3', 'necessitatibus');
INSERT INTO `yachts` (`id`, `name`) VALUES ('4', 'nam');
INSERT INTO `yachts` (`id`, `name`) VALUES ('5', 'cumque');
INSERT INTO `yachts` (`id`, `name`) VALUES ('6', 'repellendus');
INSERT INTO `yachts` (`id`, `name`) VALUES ('7', 'odit');
INSERT INTO `yachts` (`id`, `name`) VALUES ('8', 'praesentium');
INSERT INTO `yachts` (`id`, `name`) VALUES ('9', 'quidem');
INSERT INTO `yachts` (`id`, `name`) VALUES ('10', 'inventore');
INSERT INTO `yachts` (`id`, `name`) VALUES ('11', 'dignissimos');
INSERT INTO `yachts` (`id`, `name`) VALUES ('12', 'ut');
INSERT INTO `yachts` (`id`, `name`) VALUES ('13', 'quia');
INSERT INTO `yachts` (`id`, `name`) VALUES ('14', 'quasi');
INSERT INTO `yachts` (`id`, `name`) VALUES ('15', 'architecto');
INSERT INTO `yachts` (`id`, `name`) VALUES ('16', 'architecto');
INSERT INTO `yachts` (`id`, `name`) VALUES ('17', 'accusamus');
INSERT INTO `yachts` (`id`, `name`) VALUES ('18', 'voluptatem');
INSERT INTO `yachts` (`id`, `name`) VALUES ('19', 'officiis');
INSERT INTO `yachts` (`id`, `name`) VALUES ('20', 'quasi');
INSERT INTO `yachts` (`id`, `name`) VALUES ('21', 'fugiat');
INSERT INTO `yachts` (`id`, `name`) VALUES ('22', 'velit');
INSERT INTO `yachts` (`id`, `name`) VALUES ('23', 'odit');
INSERT INTO `yachts` (`id`, `name`) VALUES ('24', 'est');
INSERT INTO `yachts` (`id`, `name`) VALUES ('25', 'ut');
INSERT INTO `yachts` (`id`, `name`) VALUES ('26', 'at');
INSERT INTO `yachts` (`id`, `name`) VALUES ('27', 'culpa');
INSERT INTO `yachts` (`id`, `name`) VALUES ('28', 'quod');
INSERT INTO `yachts` (`id`, `name`) VALUES ('29', 'qui');
INSERT INTO `yachts` (`id`, `name`) VALUES ('30', 'recusandae');
INSERT INTO `yachts` (`id`, `name`) VALUES ('31', 'numquam');
INSERT INTO `yachts` (`id`, `name`) VALUES ('32', 'nulla');
INSERT INTO `yachts` (`id`, `name`) VALUES ('33', 'alias');
INSERT INTO `yachts` (`id`, `name`) VALUES ('34', 'omnis');
INSERT INTO `yachts` (`id`, `name`) VALUES ('35', 'autem');
INSERT INTO `yachts` (`id`, `name`) VALUES ('36', 'sint');
INSERT INTO `yachts` (`id`, `name`) VALUES ('37', 'ducimus');
INSERT INTO `yachts` (`id`, `name`) VALUES ('38', 'dolor');
INSERT INTO `yachts` (`id`, `name`) VALUES ('39', 'reprehenderit');
INSERT INTO `yachts` (`id`, `name`) VALUES ('40', 'voluptate');
INSERT INTO `yachts` (`id`, `name`) VALUES ('41', 'aut');
INSERT INTO `yachts` (`id`, `name`) VALUES ('42', 'placeat');
INSERT INTO `yachts` (`id`, `name`) VALUES ('43', 'in');
INSERT INTO `yachts` (`id`, `name`) VALUES ('44', 'aut');
INSERT INTO `yachts` (`id`, `name`) VALUES ('45', 'ipsum');
INSERT INTO `yachts` (`id`, `name`) VALUES ('46', 'cumque');
INSERT INTO `yachts` (`id`, `name`) VALUES ('47', 'reiciendis');
INSERT INTO `yachts` (`id`, `name`) VALUES ('48', 'consequatur');
INSERT INTO `yachts` (`id`, `name`) VALUES ('49', 'adipisci');
INSERT INTO `yachts` (`id`, `name`) VALUES ('50', 'sint');


#
# TABLE STRUCTURE FOR: yachts_photos
#

DROP TABLE IF EXISTS `yachts_photos`;

CREATE TABLE `yachts_photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `yacht_id` bigint(20) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `yacht_id` (`yacht_id`),
  CONSTRAINT `yachts_photos_ibfk_1` FOREIGN KEY (`yacht_id`) REFERENCES `yachts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', 'voluptatem', 7, NULL, '2004-02-05 19:46:53', '1975-07-10 11:24:35');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', 'sit', 3, NULL, '2018-12-13 21:47:05', '1981-08-04 04:32:14');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', 'eos', 63647, NULL, '1972-02-04 03:51:52', '1986-06-15 09:19:33');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', 'aut', 546583, NULL, '1978-06-13 03:23:12', '2011-12-06 18:10:54');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', 'ipsam', 3893141, NULL, '1989-04-10 02:26:07', '1974-05-11 13:03:13');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', 'ipsa', 70364496, NULL, '1992-11-19 19:48:35', '2016-05-26 12:02:01');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', 'optio', 0, NULL, '1988-12-14 22:38:15', '2004-12-08 18:55:15');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', 'voluptatem', 9, NULL, '2000-04-12 20:43:10', '1978-08-26 23:45:32');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', 'necessitatibus', 12, NULL, '1996-12-19 13:38:00', '1991-09-17 12:26:21');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', 'aliquam', 4753531, NULL, '1974-03-04 14:28:59', '2005-01-08 03:21:52');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '11', 'officiis', 6537, NULL, '1995-02-10 17:57:06', '2018-09-25 19:12:34');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '12', 'aut', 74531580, NULL, '1994-09-18 17:07:25', '1990-07-08 03:40:13');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '13', 'aliquid', 61793, NULL, '1976-10-30 14:22:27', '2014-09-23 11:45:06');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '14', 'et', 942715, NULL, '1972-07-14 05:58:38', '1973-11-14 16:01:34');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '15', 'et', 24600713, NULL, '1991-02-08 23:45:19', '2004-02-24 19:15:13');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '16', 'consequatur', 5817360, NULL, '1973-03-05 03:17:48', '2017-10-23 03:50:15');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '17', 'exercitationem', 8288, NULL, '1992-08-13 03:40:30', '2008-03-25 22:36:10');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '18', 'est', 3, NULL, '1984-09-02 17:22:03', '2009-01-03 05:48:30');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '19', 'exercitationem', 7, NULL, '2017-05-03 14:47:27', '1982-06-16 17:24:10');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '20', 'est', 1427343, NULL, '1981-02-23 13:08:56', '1995-10-27 00:24:50');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '21', 'quo', 4, NULL, '1987-05-13 23:14:14', '1983-10-01 08:59:50');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '22', 'excepturi', 23, NULL, '1993-11-12 21:21:04', '2017-10-16 07:37:34');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '23', 'error', 690749, NULL, '2013-04-07 14:39:40', '1984-01-23 05:43:54');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '24', 'voluptas', 56, NULL, '2017-04-09 10:14:30', '1985-02-22 07:31:51');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '25', 'iusto', 87515, NULL, '2008-09-26 12:03:45', '1989-05-20 16:28:27');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '26', 'et', 5517, NULL, '2017-07-30 09:37:26', '2005-11-29 15:53:40');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '27', 'non', 5852, NULL, '1978-11-09 10:40:42', '1991-06-24 22:19:48');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '28', 'voluptatem', 5786755, NULL, '2003-05-22 19:08:52', '2015-08-19 22:39:48');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '29', 'voluptate', 1, NULL, '1991-12-27 10:53:44', '1972-12-20 15:43:49');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '30', 'magnam', 6071, NULL, '1985-10-12 03:53:58', '2015-03-11 07:40:40');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '31', 'voluptas', 0, NULL, '1988-01-06 19:11:45', '2013-11-22 13:10:01');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '32', 'accusantium', 3827071, NULL, '2000-10-12 19:13:17', '1979-03-17 09:58:14');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '33', 'quibusdam', 854766475, NULL, '2012-05-31 18:10:45', '1981-12-13 03:15:34');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '34', 'molestiae', 75723770, NULL, '1980-09-22 00:14:54', '1986-04-01 15:30:46');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '35', 'error', 31, NULL, '1979-07-06 08:11:33', '1989-04-18 12:51:57');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '36', 'ut', 609, NULL, '2017-12-06 13:31:25', '1980-06-07 02:01:44');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '37', 'aspernatur', 6, NULL, '2019-04-11 19:58:23', '1978-08-23 04:42:24');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '38', 'eligendi', 78, NULL, '1972-08-18 14:27:04', '1985-12-24 02:24:09');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '39', 'rerum', 930, NULL, '1986-08-13 09:15:23', '1974-07-12 20:02:05');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '40', 'labore', 26799, NULL, '1983-11-28 10:39:06', '1995-02-18 13:59:04');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '41', 'sed', 13, NULL, '1992-09-12 06:11:10', '2002-05-07 08:49:56');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '42', 'hic', 88900387, NULL, '1977-09-20 01:25:04', '2007-03-16 06:23:05');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '43', 'accusantium', 629, NULL, '2005-11-22 13:58:58', '1990-10-05 23:21:38');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '44', 'ut', 4327277, NULL, '2003-01-20 03:55:37', '1999-12-15 15:18:15');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '45', 'aut', 963819, NULL, '1994-01-31 20:18:45', '2008-09-20 04:34:18');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '46', 'quas', 28513, NULL, '2008-04-01 02:32:05', '2006-03-23 01:40:53');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '47', 'in', 71174100, NULL, '2007-06-14 16:50:08', '2019-10-06 06:57:29');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '48', 'consequatur', 10, NULL, '2010-01-28 07:01:42', '2000-07-06 22:48:15');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '49', 'neque', 918, NULL, '1981-06-18 05:27:09', '2011-11-30 21:16:56');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '50', 'sed', 0, NULL, '2018-04-20 06:40:40', '2001-06-20 12:23:17');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '1', 'a', 9195170, NULL, '1991-10-31 03:52:43', '2002-08-14 03:04:19');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '2', 'voluptate', 48068643, NULL, '2014-04-21 11:05:02', '2002-11-16 22:39:23');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '3', 'quisquam', 333, NULL, '1989-05-08 16:55:36', '1973-11-09 18:12:55');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '4', 'inventore', 201486174, NULL, '1987-12-09 05:15:57', '1983-01-09 23:03:49');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '5', 'sunt', 8, NULL, '1983-12-31 23:03:55', '1979-07-18 01:03:24');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '6', 'et', 0, NULL, '2015-11-09 06:52:52', '1989-12-01 14:15:51');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '7', 'et', 83566083, NULL, '2019-11-22 05:27:18', '1998-03-07 11:21:12');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '8', 'et', 8, NULL, '2014-11-10 23:35:55', '1987-04-30 22:52:45');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '9', 'et', 58, NULL, '2008-04-10 00:03:40', '1977-11-14 16:09:48');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '10', 'quibusdam', 150312, NULL, '2014-08-11 20:25:17', '1973-04-13 17:28:22');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '11', 'qui', 3507, NULL, '1988-11-13 17:12:38', '1981-05-22 13:18:32');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '12', 'dolor', 660623, NULL, '2007-07-20 21:19:18', '1995-05-09 21:56:48');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '13', 'velit', 163942, NULL, '2000-07-07 06:50:28', '1984-07-15 07:58:27');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '14', 'ut', 9172, NULL, '1974-08-26 18:01:07', '2016-08-24 08:16:48');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '15', 'est', 46767009, NULL, '1972-10-28 09:01:02', '2007-08-03 14:53:49');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '16', 'deserunt', 0, NULL, '1974-09-08 16:09:22', '1981-03-11 00:24:44');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '17', 'distinctio', 7097715, NULL, '2001-10-02 16:49:38', '2013-10-05 11:53:21');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '18', 'quia', 537, NULL, '2016-04-02 20:59:39', '2011-12-10 17:07:37');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '19', 'dolor', 961, NULL, '2011-11-19 03:04:03', '2006-08-02 09:47:09');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '20', 'sint', 33341106, NULL, '2007-10-27 16:10:06', '1980-12-15 09:38:48');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '21', 'eos', 53, NULL, '2015-12-22 11:41:37', '1998-05-18 19:37:11');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '22', 'aspernatur', 7362, NULL, '1994-10-02 05:22:16', '2006-03-22 05:01:56');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '23', 'ut', 0, NULL, '2003-02-04 09:17:37', '2010-02-23 04:59:34');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '24', 'eveniet', 91, NULL, '2008-09-25 03:53:03', '1997-05-23 15:19:45');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '25', 'beatae', 446261, NULL, '1999-12-16 18:57:43', '1998-10-29 19:15:31');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '26', 'ut', 561, NULL, '1980-04-13 10:45:19', '2019-05-06 20:04:58');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '27', 'veritatis', 106291209, NULL, '2009-05-06 04:00:02', '2003-01-12 11:43:07');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '28', 'rerum', 425376914, NULL, '1977-10-18 18:30:10', '1989-06-25 07:35:21');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '29', 'consequatur', 3, NULL, '1982-09-17 12:22:27', '2016-07-17 15:14:53');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '30', 'laudantium', 1021706, NULL, '1998-12-17 05:38:10', '1971-08-14 17:46:41');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '31', 'qui', 0, NULL, '2008-09-10 07:34:48', '1986-10-16 06:13:03');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '32', 'similique', 3849, NULL, '2015-04-19 22:04:54', '1974-12-02 03:09:59');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '33', 'vel', 4451137, NULL, '2012-09-22 17:35:45', '1972-05-10 04:13:47');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '34', 'vel', 9, NULL, '2010-09-04 04:12:20', '1994-02-21 13:00:13');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '35', 'illo', 80, NULL, '1981-04-15 18:14:24', '2017-08-29 20:19:15');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '36', 'quos', 1, NULL, '1999-02-07 10:04:27', '2005-12-15 11:12:53');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '37', 'ea', 56, NULL, '1978-01-28 22:16:46', '1988-12-07 11:32:59');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '38', 'corporis', 2161353, NULL, '1992-04-14 01:24:07', '2014-01-17 15:09:50');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '39', 'eaque', 797724975, NULL, '1974-09-28 21:25:48', '1971-08-17 04:44:13');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '40', 'est', 3948, NULL, '1977-01-24 23:13:31', '1992-10-07 22:40:05');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '41', 'praesentium', 180632350, NULL, '1980-09-21 08:27:02', '1986-04-02 07:57:02');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '42', 'ipsam', 783498, NULL, '1974-12-01 23:43:49', '2007-05-29 08:48:49');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '43', 'dolores', 6013611, NULL, '2012-01-18 23:46:00', '1992-12-05 11:40:11');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '44', 'perferendis', 9, NULL, '2007-09-02 11:20:52', '1978-10-30 03:38:14');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '45', 'aut', 0, NULL, '2012-10-05 07:30:32', '1976-08-04 22:33:04');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '46', 'corrupti', 7012, NULL, '1991-01-12 14:01:24', '1991-09-17 15:38:01');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '47', 'exercitationem', 87790, NULL, '1983-09-27 07:25:24', '2005-12-11 09:37:57');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '48', 'aut', 72, NULL, '1978-10-13 09:27:17', '1979-08-14 03:19:11');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '49', 'in', 120087478, NULL, '2006-10-14 05:43:33', '1974-05-29 08:30:39');
INSERT INTO `yachts_photos` (`id`, `yacht_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '50', 'velit', 88, NULL, '1984-07-30 18:53:34', '1998-01-02 18:35:17');


