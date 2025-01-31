USE companyA;

SELECT 
    *
FROM
    employee_departments
WHERE id in
    (SELECT 
            id
        FROM
            employee_work_details
        WHERE
            dept_id = 01);