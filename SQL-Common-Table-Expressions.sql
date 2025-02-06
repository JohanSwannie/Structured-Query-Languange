USE companyA;

WITH CTE_Example1 AS
(
	SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
    FROM employee_personal_details
    JOIN employee_work_details ON personal_id = work_id
    GROUP BY gender
)
SELECT AVG(avg_sal) AS average_salary
FROM CTE_Example1;

WITH CTE_Example2 AS
(
	SELECT personal_id, gender, birth_date
    FROM employee_personal_details
    WHERE birth_date > '1990-10-10'
),
CTE_Example3 AS
(
	SELECT work_id, salary 
    FROM employee_work_details
    WHERE salary > 70000
)
SELECT *
FROM CTE_Example2
JOIN CTE_Example3 ON personal_id = work_id;