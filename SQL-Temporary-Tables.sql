use companyA;

CREATE TEMPORARY TABLE IF NOT EXISTS zoo_animals (
animal_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
animal_name VARCHAR(80)
);

INSERT INTO zoo_animals (animal_name)
VALUES ('Elephant'), ('Lion'), ('Giraffe'), ('Rhinoserous'), ('Kangaroo');

SELECT *
FROM zoo_animals;

CREATE TEMPORARY TABLE IF NOT EXISTS high_salaries (
SELECT * 
FROM employee_work_details
WHERE salary > 105000
);

SELECT *
FROM high_salaries;
