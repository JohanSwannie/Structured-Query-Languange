DROP DATABASE IF EXISTS zoo;

CREATE DATABASE IF NOT EXISTS zoo;

USE zoo;

DROP TABLE IF EXISTS elephants;

CREATE TABLE IF NOT EXISTS elephants (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
elephant_name VARCHAR(25),
elephant_age INT,
elephant_gender varchar(10),
elephant_popularity_rating INT
);

INSERT INTO elephants 
(elephant_name, elephant_age, elephant_gender, elephant_popularity_rating)
VALUES ('Sarel', 7, 'Male', 98), ('Koos', 7, 'Male', 75), ('Manie', 9, 'Male', 75), ('Mary', 4, 'Female', 85), 
('Karel', 9, 'Male', 80), ('Louise', 4, 'Female', 85), ('Nefie', 2, 'Male', 75), ('Baby', 1, 'Female', 85), ('Sarah', 5, 'Female', 95);

SELECT elephant_age, elephant_age + 1 AS next_year 
FROM elephants;

SELECT DISTINCT elephant_age 
FROM elephants 
ORDER BY elephant_age;

SELECT * 
FROM elephants
WHERE elephant_age = 7;

SELECT * 
FROM elephants
WHERE elephant_age > 5;

SELECT * 
FROM elephants
WHERE elephant_age < 5;

SELECT * 
FROM elephants
where elephant_age >= 4;

SELECT * 
FROM elephants
where elephant_age <= 7;

SELECT * FROM elephants
where elephant_age != 4;

SELECT * FROM elephants
where elephant_age = 9 or elephant_age = 4;

SELECT * FROM elephants
WHERE elephant_age = 9
OR elephant_name = 'Baby'
ORDER BY elephant_name;

SELECT * 
FROM elephants
WHERE elephant_name LIKE "_are%" OR elephant_name LIKE "K%";

SELECT elephant_gender, AVG(elephant_age) AS elephant_average_age 
FROM elephants
GROUP BY elephant_gender;

SELECT elephant_gender, elephant_popularity_rating, AVG(elephant_age) AS elephant_average_age, 
MAX(elephant_age) AS max_elephant_age, MIN(elephant_age) AS min_elephant_age, COUNT(elephant_age)
FROM elephants
GROUP BY elephant_gender, elephant_popularity_rating
HAVING elephant_average_age > 4 
ORDER BY elephant_gender, elephant_popularity_rating DESC;

SELECT 
    *
FROM
    elephants
ORDER BY elephant_age DESC
LIMIT 3;

SELECT 
    *
FROM
    elephants
ORDER BY elephant_age ASC
LIMIT 4 , 2;

SELECT elephant_gender, AVG(elephant_age) as average_age
from elephants
GROUP BY elephant_gender
HAVING average_age > 5;








 