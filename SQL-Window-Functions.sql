USE companyA;

SELECT 
pers.first_name, pers.last_name, work.salary, AVG(salary) OVER(PARTITION BY pers.gender) as avg_salary 
FROM employee_personal_details pers
JOIN employee_work_details work ON personal_id = work_id;