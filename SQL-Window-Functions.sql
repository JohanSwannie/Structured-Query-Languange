USE companyA;

/* WINDOWS FUNCTIONS EXAMPLE 1 */

SELECT 
pers.first_name, pers.last_name, work.salary, AVG(salary) OVER(PARTITION BY pers.gender) as avg_salary 
FROM employee_personal_details pers
JOIN employee_work_details work ON personal_id = work_id;

/* WINDOWS FUNCTIONS EXAMPLE 2 */

SELECT 
pers.first_name, pers.last_name, work.salary, SUM(salary) OVER(PARTITION BY pers.gender ORDER BY personal_id) as rolling_total 
FROM employee_personal_details pers
JOIN employee_work_details work ON personal_id = work_id;

/* WINDOWS FUNCTIONS EXAMPLE 3 */

SELECT 
pers.first_name, pers.last_name, work.salary, 
ROW_NUMBER() OVER() 
FROM employee_personal_details pers
JOIN employee_work_details work ON personal_id = work_id;