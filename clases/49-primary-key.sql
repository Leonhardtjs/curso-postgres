ALTER TABLE country ADD PRIMARY KEY (code);


SELECT * FROM country WHERE code = 'NLD';

SELECT * FROM country WHERE code2 = 'NA';

DELETE FROM country WHERE code = 'NLD' and code2 = 'NA';