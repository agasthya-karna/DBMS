ER MODEL 
 
1. Identification of Entities : 
 
❖ IPL 
❖ Teams 
❖ Team_owners 
❖ Matches 
❖ CoachDetails 
❖ Stadium 
❖ Player 
❖ SponserDetails 
 
2. Description of Entities /Attributes / Tables: 
 
a. IPL: Year (unique) 
 
b. Teams: team_id (unique)  
          team_name 
 
c. SponserDetails: company_name (unique)  
                   country 
 
d. CoachDetails : coach_id (unique)  
                  coach_name  
                  years Exp  
                  country 
 
e. Team_owners : owner_name (unique)  
                 profession 
 
f. Matches: match_id (unique)  
            match_type   
            Date 
g. Stadium: Stadium_name (unique)  
            capacity  
            country city  
 
h. Player:  player_id (unique)  
             bowling_style  
             batting_style  
             name  
             role  
             strike_rate  
             nationality  
 
3. Relationships : 
 
❖ IPL “CHAMPIONS” Teams 
❖ IPL “SponseredBy” SponserDetails 
❖ IPL “man_of_series” Player 
❖ Teams “CoachedBy” CoachDetails 
❖ Team_owners “owns” Teams 
❖ Teams “has” player 
❖ Teams “played” Matches 
❖ Matches “play_location” Stadium 
❖ Player “man_of_match” Matches 