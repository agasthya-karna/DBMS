-- ===================================================
-- Table: IPL
-- Description: Stores IPL season information
-- ===================================================

CREATE TABLE IPL (
    year INT PRIMARY KEY,
    company_name VARCHAR(30) NOT NULL,
    man_of_series INT,
    Champions INT,
    FOREIGN KEY (man_of_series) REFERENCES players(player_id),
    FOREIGN KEY (Champions) REFERENCES teams(team_id)
);

-- Inserting the IPL 2018 sponsor into IPL table
INSERT INTO IPL VALUES (2018, 'Vivo', 1, 1);
