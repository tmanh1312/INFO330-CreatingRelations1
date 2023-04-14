CREATE TABLE IF NOT EXISTS buildings (
  id INTEGER PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS rooms (
number INTEGER,
buildingid INTEGER,
seating INTEGER,
FOREIGN KEY (buildingid) REFERENCES buildings(id)
);

INSERT INTO buildings (name, shortname) VALUES ('Mary Gates Hall', 'MGH');

INSERT INTO rooms (number, buildingid, seating) VALUES
(400, (SELECT id FROM buildings WHERE name='Mary Gates Hall'), 40);
