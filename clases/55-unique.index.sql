select * from country where continent = 'Africa';

CREATE INDEX "country_continent" on country (
	continent
);
