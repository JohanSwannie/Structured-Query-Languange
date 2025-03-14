USE companyA;

DROP PROCEDURE IF EXISTS older_employees;

CREATE PROCEDURE older_employees()
SELECT 
	*
FROM 
	employee_personal_details
WHERE 
	age >= 30;

CALL older_employees();

DROP PROCEDURE IF EXISTS high_low_salaries;

DELIMITER $$
CREATE PROCEDURE high_low_salaries()
BEGIN
SELECT
	* 
FROM 
	employee_work_details
WHERE 
	salary >= 105000;
SELECT 
    *
FROM
    employee_work_details
WHERE
    salary < 105000;
END $$
DELIMITER ;

CALL high_low_salaries();

DROP PROCEDURE IF EXISTS specific_employee_salary;

DELIMITER $$
CREATE PROCEDURE specific_employee_salary(wrk_id INT)
BEGIN
SELECT
	first_name,
    last_name,
	salary as specific_salary
FROM 
	employee_work_details
WHERE 
	work_id = wrk_id;
END $$
DELIMITER ;

CALL specific_employee_salary(02);

