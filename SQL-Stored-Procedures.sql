USE companyA;

CREATE PROCEDURE older_employees()
SELECT 
	*
FROM 
	employee_personal_details
WHERE 
	age >= 30;

CALL older_employees();

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

CALL high_low_salaries();