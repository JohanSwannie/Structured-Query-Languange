USE companyA;

/* LENGTH FUNCTION */

SELECT 
    first_name,
    LENGTH(first_name) AS name_length,
    last_name,
    LENGTH(last_name) AS surname_length
FROM
    employee_personal_details;
    
/* UPPER and LOWER Functions */

SELECT 
    UPPER(first_name), LOWER(last_name)
FROM
    employee_personal_details;
    
/* TRIM, LTRIM and RTRIM */

SELECT TRIM('             We know it will be okay                 ') as trimmed_string;
SELECT LTRIM('             We know it will be okay                 ') as left_trimmed;
SELECT RTRIM('             We know it will be okay                 ') as right_trimmed;



