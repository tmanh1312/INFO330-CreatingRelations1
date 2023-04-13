CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  firstname VARCHAR(40),
  lastname VARCHAR(80),
  age NUMERIC
);

INSERT INTO students (id, firstname, lastname, age)
VALUES (1, 'Fred', 'Flintstone', 35),
(2, 'Wilma', 'Flintstone', 29),
(3, 'Barney', 'Rubble', 33),
(4, 'Betty', 'Rubble', 29),
(5, 'Pebbles', 'Flintstone', 1),
(6, 'Bam-Bam', 'Rubble', 1),
(7, 'Bamboo', 'Ri', 5),
(8, 'Bambi', 'Tr', 7),
(9, 'Bo', 'Nguyen', 23);