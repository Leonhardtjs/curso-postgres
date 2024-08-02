SELECT * FROM country WHERE code = 'CRI';

ALTER TABLE country DROP CONSTRAINT country_continent_check;

UPDATE country set continent = 'Central America' WHERE code = 'CRI';