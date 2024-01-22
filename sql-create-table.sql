-- Create employees table
CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	hire_date DATE,
	gender VARCHAR(1),
	salary INT,
	coffeeshop_id INT

);

-- Create shops table 
CREATE TABLE shops (
	coffeeshop_id INT PRIMARY KEY,
	coffeeshop_name VARCHAR(50),
	city_id INT 
);


-- Add foreign key to the employees table 
ALTER TABLE employees
ADD FOREIGN KEY (coffeeshop_id)
REFERENCES shops(coffeeshop_id)
ON DELETE SET NULL; 

-- Create table locations 
CREATE TABLE locations (
	city_id INT PRIMARY KEY,
	city VARCHAR(50),
	country VARCHAR(50)
);

--Add foreign key to shops table
ALTER TABLE shops
ADD FOREIGN KEY (city_id)
REFERENCES locations(city_id)
ON DELETE SET NULL;

--Create suppliers table 
CREATE TABLE suppliers (
	coffeeshop_id INT,
	supplier_name VARCHAR(40),
	coffe_type VARCHAR(20),
	PRIMARY KEY (coffeeshop_id, supplier_name),
	FOREIGN KEY (coffeeshop_id) REFERENCES shops(coffeeshop_id)
	ON DELETE CASCADE
);


-- insert first two entries into employees table
-- Set the coffeshop_id to NULL for now as we have not inserted the coffeeshop values into the shops table yet
INSERT INTO employees VALUES (501559, 'Carson', 'Moscont', 'cmosconti@census.gov', '29/08/2015','M' 32973, NULL);
INSERT INTO employees VALUES (144108, 'Khalil', 'Corr', 'kcorri@github.io', '23/04/2024', 52802, NULL);

-- Insert the shop with coffeeshop_id = 1 into the shops table 
-- Set to city_id to NULL for now as we have not inserted the city values into the location table yet
INSERT INTO shops VALUES(1, 'Common Grouonds', NULL);


