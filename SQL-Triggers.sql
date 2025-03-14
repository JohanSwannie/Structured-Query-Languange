USE companyA;

DROP TRIGGER IF EXISTS employee_work_details_insert;

DELIMITER $$
CREATE TRIGGER employee_work_details_insert
	AFTER INSERT ON employee_personal_details
    FOR EACH ROW
BEGIN
	INSERT INTO employee_work_details
           (work_id, first_name, last_name)
	VALUES (NEW.personal_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_personal_details
		(personal_id, first_name, last_name, age, gender, birth_date)
VALUES (11, "John", "Algar", 53, "Male", "1973-03-13");

SELECT * FROM employee_personal_details;

SELECT * FROM employee_work_details;