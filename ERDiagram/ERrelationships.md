# Cardinality Relationships

| Relationship                               | Type of Cardinality | Description                                                                                     |
|--------------------------------------------|----------------------|-------------------------------------------------------------------------------------------------|
| IPL 'CHAMPIONS' Teams                      | 1:1                  | Each IPL year has exactly one champion team.                                                  |
| IPL 'SponseredBy' SponserDetails           | 1:1                  | Each IPL year is sponsored by one company.                                                    |
| IPL 'man_of_series' Player                 | 1:1                  | Each IPL year has one player named as 'man of the series.'                                   |
| Teams 'CoachedBy' CoachDetails             | N:1                  | Each team is coached by one coach, but a coach can coach multiple teams.                      |
| Team_owners 'owns' Teams                   | 1:N                  | Each team is owned by one owner, but an owner can own multiple teams.                         |
| Teams 'has' Player                          | 1:N                  | Each team has multiple players, but a player can belong to only one team.                     |
| Teams 'played' Matches                      | N:N                  | Teams can play multiple matches, and each match can have multiple teams.                      |
| Matches 'play_location' Stadium             | N:1                  | Each match is played in one stadium, but a stadium can host multiple matches.                 |
| Player 'man_of_match' Matches               | 1:N                  | Each match can have one player recognized as 'man of the match,' but a player can be 'man of the match' multiple times. |
