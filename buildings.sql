CREATE TABLE IF NOT EXISTS buildings (
  id INTEGER SERIAL PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS rooms (
number INTEGER,
buildingid INTEGER,
seating INTEGER,
FOREIGN KEY (buildingid) REFERENCES buildings(id)
);

INSERT INTO rooms (number, buildingid, seating) VALUES
(400, (SELECT id FROM buildings WHERE shortname='GH'), 40);
