# Cardinality Relationships

| Entity 1 | Relation          | Entity 2 | Type of Cardinality | Description                                                                                     |
|----------|-------------------|-----------|----------------------|-------------------------------------------------------------------------------------------------|
| IPL      | 'CHAMPIONS'       | Teams     | 1:1                  | Each IPL year has exactly one champion team.                                                  |
| IPL      | 'SPONSERED BY'    | SponserDetails | 1:1              | Each IPL year is sponsored by one company.                                                    |
| IPL      | 'MAN OF SERIES'   | Player    | 1:1                  | Each IPL year has one player named as 'man of the series.'                                   |
| Teams    | 'COACHED BY'      | CoachDetails | N:1                | Each team is coached by one coach, but a coach can coach multiple teams.                      |
| Team_owners | 'OWNS'         | Teams     | 1:N                  | Each team is owned by one owner, but an owner can own multiple teams.                         |
| Teams    | 'HAS'             | Player    | 1:N                  | Each team has multiple players, but a player can belong to only one team.                     |
| Teams    | 'PLAYED'          | Matches   | N:N                  | Teams can play multiple matches, and each match can have multiple teams.                      |
| Matches  | 'PLAY LOCATION'    | Stadium   | N:1                  | Each match is played in one stadium, but a stadium can host multiple matches.                 |
| Player   | 'MAN OF MATCH'    | Matches   | 1:N                  | Each match can have one player recognized as 'man of the match,' but a player can be 'man of the match' multiple times. |
