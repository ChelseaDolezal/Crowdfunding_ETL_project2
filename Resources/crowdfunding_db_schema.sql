drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;
drop table if exists contacts;

CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);
CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id SERIAL NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description VARCHAR(1000) NOT NULL,
    goal DOUBLE PRECISION NOT NULL,
    pledged DOUBLE PRECISION NOT NULL,
    outcome VARCHAR(100) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(100) NOT NULL,
    currency VARCHAR(100) NOT NULL,
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR (150) not null,
    subcategory_id VARCHAR(150) not null,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(150) PRIMARY KEY,
    category VARCHAR(100) NOT NULL
);
CREATE TABLE category (
    category_id VARCHAR(150) PRIMARY KEY,
    category VARCHAR(100) NOT NULL
);

SELECT * from category; 
SELECT * from subcategory;
SELECT * from contacts;
SELECT * from campaign;