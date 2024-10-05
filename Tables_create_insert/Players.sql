-- ===================================================
-- Table: players
-- Description: Stores player information for each team
-- ===================================================

CREATE TABLE player (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(100),
    role VARCHAR(50),
    nationality VARCHAR(50),
    strike_rate DECIMAL(5,2),
    bowling_style VARCHAR(50),
    batting_style VARCHAR(50),
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

-- Insert players data for Chennai Super Kings (CSK)
INSERT INTO player VALUES 
    (1, 'MS Dhoni', 'Wicket-keeper/Batsman', 'Indian', 120, 'Right-arm medium', 'Right-handed', 1),
    (2, 'Suresh Raina', 'Batsman', 'Indian', 130, 'Right-arm offbreak', 'Left-handed', 1),
    (3, 'Ravindra Jadeja', 'All-rounder', 'Indian', 110, 'Left-arm orthodox', 'Left-handed', 1),
    (4, 'Harbhajan Singh', 'Bowler', 'Indian', NULL, 'Right-arm offbreak', 'Right-handed', 1),
    (5, 'Shane Watson', 'All-rounder', 'Australian', 140, 'Right-arm fast-medium', 'Right-handed', 1),
    (6, 'Dwayne Bravo', 'All-rounder', 'West Indian', 150, 'Right-arm medium-fast', 'Right-handed', 1),
    (7, 'Faf du Plessis', 'Batsman', 'South African', 130, NULL, 'Right-handed', 1),
    (8, 'Imran Tahir', 'Bowler', 'South African', NULL, 'Legbreak googly', 'Right-handed', 1),
    (9, 'Ambati Rayudu', 'Batsman', 'Indian', 125, 'Right-arm offbreak', 'Right-handed', 1),
    (10, 'Deepak Chahar', 'Bowler', 'Indian', NULL, 'Right-arm medium-fast', 'Right-handed', 1),
    (11, 'Shardul Thakur', 'Bowler', 'Indian', NULL, 'Right-arm medium-fast', 'Right-handed', 1);

-- Similarly, insert players for other teams...

-- ===================================================
-- END OF PLAYERS SQL SCRIPT
-- ===================================================
