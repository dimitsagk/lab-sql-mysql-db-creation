CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
id SMALLINT NOT NULL AUTO_INCREMENT,
vehicle_id CHAR(17) NOT NULL,
manufacturer VARCHAR(40),
model VARCHAR(40),
model_year INT,
color VARCHAR(40),
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
id SMALLINT NOT NULL AUTO_INCREMENT,
customer_id VARCHAR(20) NOT NULL,
customer_name VARCHAR(40) NOT NULL,
phone_number VARCHAR(15),
email VARCHAR(40),
address VARCHAR(40),
city VARCHAR(20),
state_province VARCHAR(20),
country VARCHAR(20),
zip_postal_code VARCHAR(12),
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
id SMALLINT NOT NULL AUTO_INCREMENT,
staff_id VARCHAR(20) NOT NULL,
staff_name VARCHAR(40) NOT NULL,
store VARCHAR(40),
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
id INT NOT NULL AUTO_INCREMENT,
invoice_number VARCHAR(20) NOT NULL,
invoice_date DATE,
car SMALLINT NOT NULL,
customer SMALLINT NOT NULL,
salesperson SMALLINT,
PRIMARY KEY (id),
FOREIGN KEY (car) REFERENCES cars(id),
FOREIGN KEY (customer) REFERENCES customers(id),
FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);



