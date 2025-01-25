DROP DATABASE IF EXISTS companyA;

CREATE DATABASE IF NOT EXISTS companyA;

USE companyA;

DROP TABLE IF EXISTS employee_personal_details;

CREATE TABLE IF NOT EXISTS employee_personal_details (
    id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(35),
    last_name VARCHAR(35),
    age INT,
    gender VARCHAR(10),
    birth_date DATE
);

INSERT INTO employee_personal_details
(id, first_name, last_name, age, gender, birth_date)
VALUES (01, "James", "Mower", 30, "Male", "1994-10-17"), (02, "Luke", "Brown", 32, "Male", "1992-02-25"), (03, "John", "Algar", 40, "Male", "1985-04-22"),
       (04, "Mary", "McCarthy", 25, "Male", "1999-12-15"), (05, "Joyce", "Tanham", 33, "Male", "1991-09-12");

DROP TABLE IF EXISTS employee_work_details;

CREATE TABLE IF NOT EXISTS employee_work_details (
    id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    occupation VARCHAR(60),
    salary INT
);

INSERT INTO employee_work_details
(id, first_name, last_name, occupation, salary)
VALUES (01, "James", "Mower", "Business Analyst", 115000), (03, "John", "Algar", "Reporting Analyst", 105000),
       (04, "Mary", "McCarthy", "IT Help Desk Engineer", 95000), (05, "Joyce", "Tanham", "Data Analyst", 125000);

/* INNER JOIN EXAMPLE 1 */

SELECT 
    *
FROM
    employee_personal_details
        INNER JOIN
    employee_work_details ON employee_personal_details.id = employee_work_details.id;

/* INNER JOIN EXAMPLE 2 */

SELECT 
    *
FROM
    employee_personal_details AS pers
        INNER JOIN
    employee_work_details AS wrk ON pers.id = wrk.id;

/* LEFT OUTER JOIN */
    
SELECT 
    *
FROM
    employee_personal_details
        LEFT OUTER JOIN
    employee_work_details ON employee_personal_details.id = employee_work_details.id;

/* RIGHT OUTER JOIN */
    
SELECT 
    *
FROM
    employee_personal_details
        RIGHT OUTER JOIN
    employee_work_details ON employee_personal_details.id = employee_work_details.id;

/* SELF JOIN */

SELECT * FROM employee_personal_details emp1
JOIN employee_personal_details emp2
ON emp1.id + 1 = emp2.id;

/* Thats all folks */