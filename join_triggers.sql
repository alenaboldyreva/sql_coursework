

SELECT * FROM users
WHERE id = 9

-- выберем локации по странам:

SELECT
	locations.id as locations_id, locations.name as locations_name, locations.country_id as locations_country_id,
	countries.id as country_id, countries.name as country_name
FROM locations
LEFT JOIN countries ON countries.id = locations.country_id;



-- предположим, что при удалении одной статью в таблице faq удаляется и категория:

DELIMITER //

CREATE
	TRIGGER `faq_after_insert` AFTER INSERT 
	ON `faq` 
	FOR EACH ROW BEGIN
		IF NEW.deleted THEN
			SET @changetype = 'DELETE';
		ELSE
			SET @changetype = 'NEW';
		END IF;
		INSERT INTO faq_categories (faq_id, changetype) VALUES (NEW.id, @changetype);
		
    END$$
DELIMITER;


