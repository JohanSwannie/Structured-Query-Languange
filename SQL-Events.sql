USE companyA;

DROP EVENT if EXISTS delete_retired_employees;

DELIMITER $$
CREATE EVENT delete_retired_employees
	ON SCHEDULE EVERY 60 second
    DO
BEGIN
	DELETE FROM employee_personal_details
    WHERE age >= 50;
END $$
DELIMITER ;

SELECT * FROM employee_personal_details;

