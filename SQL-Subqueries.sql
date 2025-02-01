USE companyA;

/* SUBQUERY EXAMPLE 1 */

SELECT 
    *
FROM
    employee_work_details
WHERE dept_id in
    (SELECT 
            dept_id
        FROM
            employee_departments
        WHERE
            dept_id = 01);
            
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

/* SUBQUERY EXAMPLE 2 */
