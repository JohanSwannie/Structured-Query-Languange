USE companyA;

/* SUBQUERY EXAMPLE 1 */

SELECT 
    *
FROM
    employee_work_details
WHERE
    dept_id IN (SELECT 
            dept_id
        FROM
            employee_departments
        WHERE
            dept_id > 00 AND dept_id < 03);
            
/* SUBQUERY EXAMPLE 2 */

SELECT 
    first_name,
    last_name,
    salary,
    (SELECT 
            AVG(salary) AS average_salary
        FROM
            employee_work_details)
FROM
    employee_work_details;
