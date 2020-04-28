CREATE TABLE oscars (
    id INTEGER primary key  NOT NULL,
	movie VARCHAR(30)   NOT NULL,
    firstname VARCHAR(30)   NOT NULL,
    lastname VARCHAR(30)   NOT NULL,
    award VARCHAR(30)   NOT NULL,
	yearofaward INT NOT  NULL,
    country VARCHAR(30)   NOT NULL,
	birthyear INT NOT NULL,
	biourl VARCHAR(30)   NOT NULL
);

CREATE TABLE wiki (
    id INTEGER primary key  NOT NULL,
	country VARCHAR(30) NOT NULL,
	code VARCHAR(2)   NOT NULL
);

CREATE TABLE country_api (
    id INTEGER primary key  NOT NULL,
	country VARCHAR(30)   NOT NULL,
	code VARCHAR(2) NOT NULL,
	region VARCHAR(30)   NOT NULL,
	incomelevel VARCHAR(30)   NOT NULL,
	capitalcity VARCHAR(30)   NOT NULL
);
