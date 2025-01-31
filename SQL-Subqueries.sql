USE companyA;

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