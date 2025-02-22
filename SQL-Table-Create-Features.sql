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