DROP DATABASE IF EXISTS companyA;

CREATE DATABASE IF NOT EXISTS companyA;

USE companyA;

DROP TABLE IF EXISTS employee_personal_details;

CREATE TABLE IF NOT EXISTS employee_personal_details (
    personal_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(35),
    last_name VARCHAR(35),
    age INT,
    gender VARCHAR(10),
    birth_date DATE
);

INSERT INTO employee_personal_details
(personal_id, first_name, last_name, age, gender, birth_date)
VALUES (01, "James", "Mower", 30, "Male", "1994-10-17"), (02, "Luke", "Brown", 32, "Male", "1992-02-25"), (03, "John", "Algar", 40, "Male", "1985-04-22"),
       (04, "Mary", "McCarthy", 25, "Female", "1999-12-15"), (05, "Joyce", "Tanham", 33, "Female", "1991-09-12");

DROP TABLE IF EXISTS employee_work_details;

CREATE TABLE IF NOT EXISTS employee_work_details (
    work_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    occupation VARCHAR(60),
    salary INT,
    dept_id INT
);

INSERT INTO employee_work_details
(work_id, first_name, last_name, occupation, salary, dept_id)
VALUES (01, "James", "Mower", "Business Analyst", 115000, 03), (03, "John", "Algar", "Reporting Analyst", 105000, 07),
       (04, "Mary", "McCarthy", "IT Help Desk Engineer", 95000, 01), (05, "Joyce", "Tanham", "Data Analyst", 125000, 04),
       (06, "Anna", "Goodman", "Data Analyst", 125000, 04), (07, "Hank", "Opperman", "IT Help Desk Engineer", 90000, 01);

DROP TABLE IF EXISTS employee_departments;

CREATE TABLE IF NOT EXISTS employee_departments (
    dept_id INT PRIMARY KEY NOT NULL,
    department_name VARCHAR(80)
);

INSERT INTO employee_departments
(dept_id, department_name)
VALUES (01, "IT Hardware and Software Solutions"), (02, "IT Systems Administration"), (03, "Business Department"), 
       (04, "Data Division"), (05, "Database Department"), (06, "Operations"), (07, "Reporting Department");

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

SELECT 
    *
FROM
    employee_personal_details emp1
        JOIN
    employee_personal_details emp2 ON emp1.id + 1 = emp2.id;

/* JOIN MULTIPLE TABLES */

SELECT 
    *
FROM
    employee_personal_details emppers
        INNER JOIN
    employee_work_details empwork ON emppers.id = empwork.id
        INNER JOIN
    employee_departments empdept ON empdept.id = empwork.dept_id;
    
/* UNION ALL */

SELECT 
    first_name, last_name
FROM
    employee_personal_details 
UNION ALL SELECT 
    first_name, last_name
FROM
    employee_work_details;

/* UNION DISTINCT */

SELECT 
    first_name, last_name
FROM
    employee_personal_details 
UNION DISTINCT SELECT 
    first_name, last_name
FROM
    employee_work_details;
    
/* MULTIPLE UNIONS */

SELECT 
    first_name, last_name, 'Old Man' AS category
FROM
    employee_personal_details
WHERE
    age > 35 AND gender = 'Male' 
UNION SELECT 
    first_name, last_name, 'Old Woman' AS category
FROM
    employee_personal_details
WHERE
    age > 30 AND gender = 'Female' 
UNION SELECT 
    first_name, last_name, 'Highly Paid Employee' AS category
FROM
    employee_work_details
WHERE
    salary > 115000
ORDER BY first_name , last_name;