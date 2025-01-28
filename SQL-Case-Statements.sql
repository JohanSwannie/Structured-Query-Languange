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