USE companyA;

CREATE PROCEDURE older_employees()
SELECT *
FROM employee_personal_details
WHERE age >= 30;

CALL older_employees();