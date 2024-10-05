-- ===================================================
-- Table: matches
-- Description: Stores match information
-- ===================================================

CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    match_type VARCHAR(20),
    match_date DATE,
    venue VARCHAR(100),
    team1_id INT,
    FOREIGN KEY (team1_id) REFERENCES teams(team_id)
);

-- Insert sample match data
-- Inserting sample matches data with match_type as 'IPL'
INSERT INTO Matches VALUES (1, 'IPL', '2024-03-20', 'MA Chidambaram Stadium', 1);
INSERT INTO Matches VALUES (2, 'IPL', '2024-03-22', 'Wankhede Stadium', 31);
INSERT INTO Matches VALUES (3, 'IPL', '2024-03-25', 'Rajiv Gandhi International Cricket Stadium', 65);
INSERT INTO Matches VALUES (4, 'IPL', '2024-03-28', 'Eden Gardens', 73);
INSERT INTO Matches VALUES (5, 'IPL', '2024-03-30', 'M. Chinnaswamy Stadium', 87);
INSERT INTO Matches VALUES (6, 'IPL', '2024-04-02', 'Sawai Mansingh Stadium', 18);
INSERT INTO Matches VALUES (7, 'IPL', '2024-04-05', 'Maharashtra Cricket Association Stadium', 39);
INSERT INTO Matches VALUES (8, 'IPL', '2024-04-07', 'Feroz Shah Kotla', 54);

-- Additional match entries...

-- ===================================================
-- END OF MATCHES SQL SCRIPT
-- ===================================================
