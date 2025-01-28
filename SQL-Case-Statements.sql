USE companyA;

SELECT 
    first_name,
    last_name,
    age,
    CASE
        WHEN age < 30 THEN 'Young and Learning'
        WHEN age BETWEEN 30 AND 39 THEN 'Young and semi experienced'
        WHEN age > 39 THEN 'Middle aged and experienced'
    END AS age_category
FROM
    employee_personal_details;
    
SELECT 
    first_name,
    last_name,
    salary,
    CASE
        WHEN salary < 95000 THEN salary * 1.05
        WHEN salary BETWEEN 95000 AND 104999 THEN salary * 1.07
        WHEN salary BETWEEN 105000 AND 114999 THEN salary * 1.08
        WHEN salary BETWEEN 115000 AND 124999 THEN salary * 1.09
        WHEN salary > 124999 THEN salary * 1.10
    END AS new_salary,
    CASE
        WHEN dept_id = 01 THEN salary * 0.05
        WHEN dept_id = 02 THEN salary * 0.06
        WHEN dept_id = 03 THEN salary * 0.07
        WHEN dept_id = 04 THEN salary * 0.08
        WHEN dept_id = 05 THEN salary * 0.09
        WHEN dept_id = 06 THEN salary * 0.10
        WHEN dept_id = 07 THEN salary * 0.11
    END AS bonus
FROM
    employee_work_details;