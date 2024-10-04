# ER MODEL

## 1. Identification of Entities
- IPL
- Teams
- Team Owners
- Matches
- Coach Details
- Stadium
- Player
- Sponsor Details

## 2. Description of Entities / Attributes / Tables

### a. IPL
- **Year** (unique)

### b. Teams
- **team_id** (unique)
- **team_name**

### c. Sponsor Details
- **company_name** (unique)
- **country**

### d. Coach Details
- **coach_id** (unique)
- **coach_name**
- **years Experience**
- **country**

### e. Team Owners
- **owner_name** (unique)
- **profession**

### f. Matches
- **match_id** (unique)
- **match_type**
- **Date**

### g. Stadium
- **Stadium_name** (unique)
- **capacity**
- **country**
- **city**

### h. Player
- **player_id** (unique)
- **bowling_style**
- **batting_style**
- **name**
- **role**
- **strike_rate**
- **nationality**

## 3. Relationships
- **IPL** “CHAMPIONS” **Teams**
- **IPL** “Sponsered By” **Sponsor Details**
- **IPL** “man_of_series” **Player**
- **Teams** “Coached By” **Coach Details**
- **Team Owners** “owns” **Teams**
- **Teams** “has” **Player**
- **Teams** “played” **Matches**
- **Matches** “play_location” **Stadium**
- **Player** “man_of_match” **Matches**