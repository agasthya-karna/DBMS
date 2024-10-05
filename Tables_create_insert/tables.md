# Database Tables - Creation and Insert Statements
```sql
CREATE TABLE teams (
    team_id NUMBER(10),
    team_name VARCHAR2(30),
    PRIMARY KEY (team_id)
);

CREATE TABLE player (
    player_id NUMBER(10),
    name VARCHAR2(30),
    roles VARCHAR2(30),
    nationality VARCHAR2(30),
    strike_rate NUMBER(5),
    bowling_style VARCHAR2(30),
    batting_style VARCHAR2(30),
    team_id NUMBER(10),
    PRIMARY KEY (player_id),
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

CREATE TABLE CoachDetails (
    coach_id INT(10),
    country VARCHAR(30) NOT NULL,
    yearsExp INT NOT NULL,
    coach_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (coach_id)
);

CREATE TABLE SponsersDetails (
    company_name VARCHAR NOT NULL,
    country VARCHAR NOT NULL,
    PRIMARY KEY (company_name)
);

CREATE TABLE Stadium (
    city VARCHAR(30),
    country VARCHAR(30),
    capacity INT(10),
    Stadium_name VARCHAR(30),
    PRIMARY KEY (Stadium_name)
);

CREATE TABLE Team_owners (
    owner_name VARCHAR(30),
    profession VARCHAR(30),
    PRIMARY KEY (owner_name)
);

CREATE TABLE Teams (
    team_id INT(10),
    team_name VARCHAR(30),
    coach_id INT(30),
    owner_name VARCHAR(30),
    PRIMARY KEY (team_id),
    FOREIGN KEY (coach_id) REFERENCES CoachDetails(coach_id),
    FOREIGN KEY (owner_name) REFERENCES Team_owners(owner_name)
);

CREATE TABLE Player (
    player_id INT,
    role VARCHAR2(30),
    name VARCHAR2(30),
    batting_style VARCHAR2(30),
    bowling_style VARCHAR2(30),
    strike_rate VARCHAR2(30),
    nationality VARCHAR2(30),
    team_id VARCHAR2(30),
    PRIMARY KEY (player_id),
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

CREATE TABLE Matches (
    match_id INT(10),
    match_type VARCHAR2(30),
    Date DATE,
    Stadium_name VARCHAR2(30),
    man_of_match INT(5),
    PRIMARY KEY (match_id),
    FOREIGN KEY (Stadium_name) REFERENCES Stadium(Stadium_name),
    FOREIGN KEY (man_of_match) REFERENCES Player(player_id)
);

CREATE TABLE Played (
    fours INT(5),
    sixes INT(5),
    team_runs INT(5),
    wickets INT(5),
    team_id INT(5),
    match_id INT(5),
    PRIMARY KEY (team_id, match_id),
    FOREIGN KEY (team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);

CREATE TABLE IPL (
    year INT(5),
    company_name VARCHAR2(30),
    man_of_series INT(5),
    Champions INT(5),
    PRIMARY KEY (year),
    FOREIGN KEY (company_name) REFERENCES SponsersDetails(company_name),
    FOREIGN KEY (man_of_series) REFERENCES Player(player_id),
    FOREIGN KEY (Champions) REFERENCES Teams(team_id)
);
