-- ===================================================
-- Table: teams
-- Description: Stores IPL teams information
-- ===================================================

CREATE TABLE teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL
);

-- Insert teams data
INSERT INTO teams VALUES (1, 'Chennai Super Kings');
INSERT INTO teams VALUES (2, 'Mumbai Indians');
INSERT INTO teams VALUES (3, 'Sunrisers Hyderabad');
INSERT INTO teams VALUES (4, 'Royal Challengers Bangalore');
INSERT INTO teams VALUES (5, 'Kolkata Knight Riders');
INSERT INTO teams VALUES (6, 'Rajasthan Royals');
INSERT INTO teams VALUES (7, 'Kings XI Punjab');
INSERT INTO teams VALUES (8, 'Delhi Capitals');

-- ===================================================
-- END OF TEAMS SQL SCRIPT
-- ===================================================
