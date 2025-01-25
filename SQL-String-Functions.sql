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

SELECT TRIM('             We know it will be okay                 ') AS trimmed_string;
SELECT LTRIM('             We know it will be okay                 ') as left_trimmed;
SELECT RTRIM('             We know it will be okay                 ') as right_trimmed;

/* LEFT and RIGHT */

SELECT 
    LEFT(first_name, 3) AS name_first3,
    RIGHT(first_name, 3) AS name_last3
FROM
    employee_personal_details; 
    
/* SUBSTRING */

SELECT 
    SUBSTRING('We walk down the valley',
        4,
        9);
        
SELECT 
    first_name,
    last_name,
    SUBSTRING(birth_date, 6, 2) AS birth_month
FROM
    employee_personal_details;

