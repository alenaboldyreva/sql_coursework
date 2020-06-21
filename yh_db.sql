
DROP TABLE IF EXISTS `yachts`;
CREATE TABLE `yachts` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
 	`name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
  );


DROP TABLE IF EXISTS `regions`;
CREATE TABLE `regions` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(150) DEFAULT NULL,
	`yacht_id` bigint unsigned NOT NULL,
	`region_description` varchar(400),
PRIMARY KEY (`id`),
UNIQUE KEY `id` (`id`)
 );


DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(150) DEFAULT NULL,
	`region_id` bigint unsigned NOT NULL,
	`yacht_id` bigint unsigned NOT NULL, -- яхты, которые ходят в этом направлении
	`country_description` varchar(400),
	`body` text,
PRIMARY KEY (`id`),
UNIQUE KEY `id` (`id`),
KEY `yacht_id` (`yacht_id`),
KEY `region_id` (`region_id`),
CONSTRAINT `yacht_ibfk_1` FOREIGN KEY (`yacht_id`) REFERENCES `yachts` (`id`),
CONSTRAINT `region_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
 );


DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(150) DEFAULT NULL,
	`country_id` bigint unsigned NOT NULL,
	`location_description` varchar(400),
	`body` text,
PRIMARY KEY (`id`),
UNIQUE KEY `id` (`id`),
KEY `country_id` (`country_id`),
CONSTRAINT `country_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
 );


DROP TABLE IF EXISTS `yachts_photos`;
CREATE TABLE `yachts_photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `yacht_id` bigint unsigned NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `yacht_id` (`yacht_id`),
  CONSTRAINT `yachts_photos_ibfk_1` FOREIGN KEY (`yacht_id`) REFERENCES `yachts` (`id`)
);


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(150) DEFAULT NULL,
	`lastname` varchar(255) DEFAULT NULL,
	`email` varchar(120) DEFAULT NULL,
 	`phone` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_name_lastname_idx` (`name`,`lastname`)
);


DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(150) DEFAULT NULL,
	`email` varchar(120) DEFAULT NULL,
 	`phone` bigint DEFAULT NULL,
 	`yacht_id` bigint unsigned NOT NULL, -- по какой яхте была осуществлена заявка;
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `yacht_id` (`yacht_id`),
  CONSTRAINT `yacht_id_ibfk_1` FOREIGN KEY (`yacht_id`) REFERENCES `yachts` (`id`)
);

DROP TABLE IF EXISTS `callback_form`;
CREATE TABLE `callback_form` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`customer_id` bigint unsigned NOT NULL,
	`created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`),
 UNIQUE KEY `id` (`id`),
 KEY `customer_id` (`customer_id`),
 CONSTRAINT `customer_id_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
);


DROP TABLE IF EXISTS `dic_toys`;
CREATE TABLE `dic_toys` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(150) DEFAULT NULL,
	`created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 	`updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 	PRIMARY KEY (`id`),
 	UNIQUE KEY `id` (`id`)
);

-- сначала игрушки и удобства создаются в справочнике, а потом добавляются из справочника к яхтам, то же самое и с удобствами на яхте;

DROP TABLE IF EXISTS `toys`; 
CREATE TABLE `toys` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`yacht_id` bigint unsigned NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `id` (`id`),
CONSTRAINT `yacht_id_ibfk_2` FOREIGN KEY (`yacht_id`) REFERENCES `yachts` (`id`)
);


DROP TABLE IF EXISTS `dic_amenties`;
CREATE TABLE `dic_amenties` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(150) DEFAULT NULL,
	`created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 	`updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 	PRIMARY KEY (`id`),
 	UNIQUE KEY `id` (`id`)
);


DROP TABLE IF EXISTS `amenties`; 
CREATE TABLE `amenties` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`yacht_id` bigint unsigned NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `id` (`id`),
CONSTRAINT `yacht_id_ibfk_3` FOREIGN KEY (`yacht_id`) REFERENCES `yachts` (`id`)
);


DROP TABLE IF EXISTS `faq_categories`;
CREATE TABLE `faq_categories` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(150) DEFAULT NULL,
	`faq_description` varchar(400),
	`created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 	`updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 	PRIMARY KEY (`id`),
 	UNIQUE KEY `id` (`id`)
);


DROP TABLE IF EXISTS `faq`; 
CREATE TABLE `faq` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`faq_category_id` bigint unsigned NOT NULL,
	`body` text,
PRIMARY KEY (`id`),
UNIQUE KEY `id` (`id`),
CONSTRAINT `faq_category_id_ibfk_1` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`)
);

