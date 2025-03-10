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
        10) as new_string;
        
SELECT 
    first_name,
    last_name,
    SUBSTRING(birth_date, 6, 2) AS birth_month
FROM
    employee_personal_details;

/* REPLACE */

SELECT 
    REPLACE('The elephant eats lots of grass',
        'grass',
        'bananas') AS elephant_activity;
        
SELECT 
    first_name,
    last_name,
    gender,
    REPLACE(gender, 'Male', 'Man') AS sex_of_Male
FROM
    employee_personal_details;
    
/* LOCATE */

SELECT LOCATE('an', 'elephant') AS position_found;

SELECT 
    first_name, LOCATE('ke', first_name) AS position_found
FROM
    employee_personal_details;
    
/* FIELD */

SELECT FIELD('c', 'p', 'h', 'z', 'a', 'e', 'c', 'h', 'u') AS string_list_index; 

/* FIND_IN_SET */

SELECT FIND_IN_SET('x', '9,Y,s,8,t,p,w,x,f,h') AS position_in_list_of_strings;

/* FORMAT */

SELECT FORMAT(317189.6781, 2) AS rounded_number;

/* INSERT */

SELECT 
    INSERT('HP-PAVILION-COM ',
        16,
        5,
        'PUTER') AS computer_name; 

/* CONCAT */

SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name
FROM
    employee_personal_details;

/* INSTR */

SELECT INSTR("The elephant walk on the mountain", "walk") as instring_position;
    
/* CONCAT_WS */

SELECT 
    CONCAT_WS('-',
            'Cullinan',
            'Premier',
            'Golf',
            'Club') AS golf_course;
            
