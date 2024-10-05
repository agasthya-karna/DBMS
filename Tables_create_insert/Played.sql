-- ===================================================
-- Table: played
-- Description: Stores player performance in matches
-- ===================================================

CREATE TABLE played (
    match_id INT,
    player_id INT,
    fours INT,
    sixes INT,
    team_runs INT,
    wickets INT,
    PRIMARY KEY (match_id, player_id),
    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);

-- Inserting data into played table
INSERT INTO played VALUES (12, 8, 180, 4, 1, 1);
INSERT INTO played VALUES (10, 9, 170, 5, 2, 2);
INSERT INTO played VALUES (8, 6, 160, 6, 3, 3);
INSERT INTO played VALUES (9, 7, 175, 4, 4, 4);
INSERT INTO played VALUES (11, 10, 190, 3, 5, 5);
INSERT INTO played VALUES (7, 5, 155, 7, 6, 6);
INSERT INTO played VALUES (13, 11, 200, 2, 7, 7);
INSERT INTO played VALUES (10, 8, 180, 5, 8, 8);
