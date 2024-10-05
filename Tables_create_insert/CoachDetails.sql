CREATE TABLE CoachDetails
(
  coach_id INT(10),
  country VARCHAR(30) NOT NULL,
  yearsExp INT NOT NULL,
  coach_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (coach_id)
);

INSERT INTO CoachDetails VALUES (1, 'India', 10, 'Stephen Fleming');
INSERT INTO CoachDetails VALUES (2, 'India', 8, 'Mahela Jayawardene');
INSERT INTO CoachDetails VALUES (3, 'India', 6, 'Trevor Bayliss');
INSERT INTO CoachDetails VALUES (4, 'India', 5, 'Simon Katich');
INSERT INTO CoachDetails VALUES (5, 'India', 7, 'Anil Kumble');
INSERT INTO CoachDetails VALUES (6, 'India', 4, 'Ricky Ponting');
INSERT INTO CoachDetails VALUES (7, 'India', 3, 'Sanjay Bangar');
INSERT INTO CoachDetails VALUES (8, 'India', 2, 'Brendon McCullum');
