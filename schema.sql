DROP TABLE IF EXISTS locations;
DROP TABLE IF EXISTS crops;

CREATE TABLE locations (
	id INTEGER PRIMARY KEY, 
	name VARCHAR(100), 
	nickname VARCHAR(100),
	address VARCHAR (300), 
	latitude VARCHAR,
	longitude VARCHAR,
	phone_number INTEGER,
	name_of_supervisor VARCHAR(100));

CREATE TABLE crops (
	id INTEGER PRIMARY KEY,
	name VARCHAR(100),
	color VARCHAR(30),
	type VARCHAR,
	quantity INTEGER,
	early_harvest_date TEXT,
	location INTEGER);