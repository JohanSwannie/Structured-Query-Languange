DROP DATABASE IF EXISTS companyb;

CREATE DATABASE IF NOT EXISTS companyb;

USE companyb;

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

ALTER TABLE employee_details1
ADD emp_email VARCHAR(70);
