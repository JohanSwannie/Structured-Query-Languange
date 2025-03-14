DROP DATABASE IF EXISTS companyb;

CREATE DATABASE IF NOT EXISTS companyb;

USE companyb;

SHOW DATABASES;

DROP TABLE IF EXISTS employee_details1;

CREATE TABLE IF NOT EXISTS employee_details1 (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(40),
    emp_surname VARCHAR(40),
    emp_position VARCHAR(50),
    emp_salary INT NOT NULL
);

INSERT INTO employee_details1
(emp_name, emp_surname, emp_position, emp_salary)
VALUES ('James', 'Mower', 'Senior Project Manager', 185000),
('Mary', 'Onsworth', 'Project Manager', 160000),
('Koos', 'Roos', 'Senior Software Developer', 155000),
('Dorothy', 'Blake', 'Software Developer', 125000),
('Trudy', 'Brown', 'Data Analyst', 95000);

DROP TABLE IF EXISTS employee_details2;

CREATE TABLE IF NOT EXISTS employee_details2 AS
SELECT emp_name, emp_surname, emp_position, emp_salary
FROM employee_details1;

SELECT * FROM employee_details2;

SHOW TABLES FROM companyb;

ALTER TABLE employee_details1
ADD COLUMN emp_email VARCHAR(70),
ADD COLUMN emp_hobby VARCHAR(50);

ALTER TABLE employee_details1
DROP COLUMN emp_hobby;

DESCRIBE employee_details1;

DESCRIBE employee_details2; 

SHOW COLUMNS FROM employee_details1;

SHOW COLUMNS FROM employee_details2;

EXPLAIN SELECT * FROM employee_details1 WHERE id > 2 ORDER BY emp_surname;

CREATE TABLE department (
	dept_id INT NOT NULL,
    dept_name VARCHAR(70) DEFAULT 'Information Technology',
    dept_budget INT NOT NULL,
    CONSTRAINT udn_department UNIQUE (dept_id, dept_name),
    CHECK (dept_budget > 2000),
    PRIMARY KEY (dept_id)
);

CREATE TABLE orders (
	order_id INT NOT NULL,
    order_number INT NOT NULL,
    order_date DATE,
    dept_id INT NOT NULL,
    CONSTRAINT uon_order UNIQUE (order_number, dept_id),
    PRIMARY KEY (order_id),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
)

