# IPL Database Interactive Queries

This document contains interactive SQL queries and triggers for managing IPL (Indian Premier League) data.

## 1. Find the name of the coach for the team 'Chennai Super Kings'

```sql
SELECT coach_name  
FROM CoachDetails  
WHERE coach_id = ( 
    SELECT coach_id  
    FROM Teams  
    WHERE team_name = 'Chennai Super Kings'
);

SELECT name  
FROM Player  
WHERE roles = 'Batsman'  
AND team_id = ( 
    SELECT team_id  
    FROM Teams  
    WHERE team_name = 'Mumbai Indians'
);


SELECT Stadium_name, capacity 
FROM Stadium  
WHERE Stadium_name = ( 
    SELECT Stadium_name 
    FROM Matches 
    JOIN played ON Matches.match_id = played.match_id  
    WHERE sixes = ( 
        SELECT MAX(sixes)  
        FROM played 
    )
);


SELECT team_name  
FROM Teams  
WHERE owner_name IN ( 
    SELECT owner_name  
    FROM Team_owners  
    WHERE profession != 'Sports Company'  
    AND profession != 'Media Conglomerate'
);


SELECT name  
FROM Player  
WHERE strike_rate = ( 
    SELECT MAX(strike_rate)  
    FROM Player
);

SELECT country  
FROM CoachDetails  
WHERE coach_id = ( 
    SELECT coach_id  
    FROM Teams  
    WHERE team_name = 'Royal Challengers Bangalore'
);


SELECT name  
FROM Player  
WHERE roles = 'All-rounder'  
AND team_id = ( 
    SELECT team_id  
    FROM Teams  
    WHERE team_name = 'Kolkata Knight Riders'
);


SELECT Stadium_name, city  
FROM Stadium  
WHERE Stadium_name = ( 
    SELECT Stadium_name  
    FROM Matches  
    JOIN played ON Matches.match_id = played.match_id  
    WHERE fours = ( 
        SELECT MIN(fours)  
        FROM played  
    )
);


SELECT name  
FROM Player  
WHERE strike_rate = ( 
    SELECT MAX(strike_rate)  
    FROM Player  
    WHERE team_id = ( 
        SELECT team_id  
        FROM Teams  
        WHERE team_name = 'Sunrisers Hyderabad'
    )
);


CREATE OR REPLACE TRIGGER update_coach_experience 
AFTER INSERT ON Teams 
FOR EACH ROW 
BEGIN 
    UPDATE CoachDetails 
    SET yearsExp = yearsExp + 1 
    WHERE coach_id = :NEW.coach_id; 
END;


DECLARE 
    v_team_name Teams.team_name%TYPE; 
    CURSOR team_cursor IS 
        SELECT team_name 
        FROM Teams; 
BEGIN 
    OPEN team_cursor; 
    LOOP 
        FETCH team_cursor INTO v_team_name; 
        EXIT WHEN team_cursor%NOTFOUND; 
        DBMS_OUTPUT.PUT_LINE('Team Name: ' || v_team_name); 
    END LOOP; 
    CLOSE team_cursor; 
END;
