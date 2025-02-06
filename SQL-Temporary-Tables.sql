use companyA;

CREATE TEMPORARY TABLE IF NOT EXISTS zoo_animals (
animal_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
animal_name VARCHAR(80)
);

INSERT INTO zoo_animals (animal_name)
VALUES ('Elephant'), ('Lion'), ('Giraffe'), ('Rhinoserous'), ('Kangaroo');

SELECT *
FROM zoo_animals;

