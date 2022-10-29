CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description VARCHAR NOT NULL,
	goal VARCHAR NOT NULL,
	pledged INT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launched_date date NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	stubcategory_id VARCHAR NOT NULL,
	PRIMARY KEY (cf_id)
);

CREATE TABLE category (
	category_id VARCHAR(10) NOT NULL,
	category_name VARCHAR (50) NOT NULL,
	PRIMARY KEY (category_id)




);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (subcategory_id)




);

CREATE TABLE contacts (
	
	contact_id INT NOT NULL,
	email VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	PRIMARY KEY (contact_id)




);

CREATE TABLE backers (
	backer_id VARCHAR NOT NULL,
	cf_id INT NOT NULL,
	email VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	FOREIGN KEY (cf_id) REFERENCES campaign,
	PRIMARY KEY (cf_id, backer_id)
);


SELECT *
FROM backers;
