# Schema Refinement

## 1. CoachDetails

### Attributes:
- coach_id
- country
- yearsExp
- coach_name

### FUNCTIONAL DEPENDENCIES:
- coach_id → country
- coach_id → yearsExp
- coach_id → coach_name
- coach_name → country
- coach_name → yearsExp
- coach_name → coach_id

Let coach_id = coach_name = X  
(X)+ = { coach_id, country, yearsExp, coach_name }  
Thus Candidate keys are { coach_id, coach_name }

The left side of the FD’s are in the minimal form representing that they are candidate keys, so the table **CoachDetails** is in **2NF** (no partial dependency).  
Not in **3NF** (transitive dependency exists).

**Decomposed Tables:**
- Table-1: { coach_id, country, yearsExp }
- Table-2: { coach_id, coach_name }

---

## 2. SponsersDetails

### Attributes:
- company_name
- country

### FUNCTIONAL DEPENDENCIES:
- company_name → country

Let company_name = X  
(X)+ = { company_name, country }  
Thus Candidate key is { company_name }

The left side of the FD’s are in the minimal form representing that they are candidate keys, so the table **SponsersDetails** is in **BCNF**.

---

## 3. Team_owners

### Attributes:
- owner_name
- profession

### FUNCTIONAL DEPENDENCIES:
- owner_name → profession

Let owner_name = X  
(X)+ = { owner_name, profession }  
Thus Candidate key is { owner_name }

The left side of the FD’s are in the minimal form representing that they are candidate keys, so the table **Team_owners** is in **BCNF**.

---

## 4. Stadium

### Attributes:
- city
- country
- capacity
- Stadium_name

### FUNCTIONAL DEPENDENCIES:
- Stadium_name → city
- Stadium_name → country
- Stadium_name → capacity

Let Stadium_name = X  
(X)+ = { city, country, capacity, Stadium_name }  
Thus Candidate key is { Stadium_name }

The left side of the FD’s are in the minimal form representing that they are candidate keys, so the table **Stadium** is in **BCNF**.

---

## 5. Player

### Attributes:
- player_id
- name
- roles
- nationality
- strike_rate
- bowling_style
- batting_style
- team_id

### FUNCTIONAL DEPENDENCIES:
- player_id → name
- player_id → roles
- player_id → nationality
- player_id → strike_rate
- player_id → bowling_style
- player_id → batting_style
- player_id → team_id
- team_id → name
- team_id → roles
- team_id → nationality
- team_id → strike_rate
- team_id → bowling_style
- team_id → batting_style
- team_id → player_id

Let player_id = team_id = X  
(X)+ = { player_id, name, roles, nationality, strike_rate, bowling_style, batting_style, team_id }  
Thus Candidate keys are { player_id, team_id }

The left side of the FD’s are in the minimal form representing that they are candidate keys, so the table **Player** is in **2NF** (no partial dependency).  
Not in **3NF** (transitive dependency exists).

**Decomposed Tables:**
- Table-1: { player_id, name, roles, nationality, strike_rate, bowling_style, batting_style }
- Table-2: { player_id, team_id }

---

## 6. IPL

### Attributes:
- year
- company_name
- man_of_series
- Champions

### FUNCTIONAL DEPENDENCIES:
- year → company_name
- year → man_of_series
- year → Champions

Let year = X  
(X)+ = { year, company_name, man_of_series, Champions }  
Thus Candidate key is { year }

The left side of the FD’s are in the minimal form representing that they are candidate keys, so the table **IPL** is in **BCNF**.

---

## 7. Matches

### Attributes:
- match_id
- match_type
- Date
- Stadium_name
- man_of_match

### FUNCTIONAL DEPENDENCIES:
- match_id → match_type
- match_id → Date
- match_id → Stadium_name
- match_id → man_of_match
- Date → match_id
- Date → match_type
- Date → Stadium_name
- Date → man_of_match

Let match_id = Date = X  
(X)+ = { match_id, match_type, Date, Stadium_name, man_of_match }  
Thus Candidate keys are { match_id, Date }

The left side of the FD’s are in the minimal form representing that they are candidate keys, so the table **Matches** is in **2NF** (no partial dependency).  
Not in **3NF** (transitive dependency exists).

**Decomposed Tables:**
- Table-1: { match_id, match_type, Stadium_name, man_of_match }
- Table-2: { match_id, Date }

---

## 8. Played

### Attributes:
- fours
- sixes
- team_runs
- wickets
- team_id
- match_id

### FUNCTIONAL DEPENDENCIES:
- (team_id, match_id) → fours
- (team_id, match_id) → sixes
- (team_id, match_id) → team_runs
- (team_id, match_id) → wickets

Let (team_id, match_id) = X  
(X)+ = { fours, sixes, team_runs, wickets, team_id, match_id }  
Thus Candidate key (in this case a composite key too) is { (team_id, match_id) }

The left side of the FD’s are in the minimal form representing that they are candidate keys, so the table **Played** is in **BCNF**.

---

## 9. Teams

### Attributes:
- team_id
- team_name
- coach_id
- owner_name

### FUNCTIONAL DEPENDENCIES:
- team_id → team_name
- team_id → coach_id
- team_id → owner_name
- team_name → team_id
- team_name → coach_id
- team_name → owner_name
- coach_id → team_id
- coach_id → team_name
- coach_id → owner_name
- owner_name → team_id
- owner_name → team_name
- owner_name → coach_id

There are multiple keys that have the potential to act as a primary key because of transitive dependency.  
Hence it's not in **3NF**. 

**Decomposed Tables:**
- Table-1: { team_id, team_name }
- Table-2: { team_id, coach_id }
- Table-3: { team_id, owner_name }
