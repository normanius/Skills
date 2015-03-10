Format of the json file that matches with the simple data generator.

Three parts (that could be split in separate files):
- Tournament: meta information about the competition
- Players: array of users   => the user base
- Battles: array of battles => team configurations and battle outcomes

Every player is described by the following fields:
- id:                unique player id
- scoreExpectation:  some fixed value (or later: an array if the value evolves)
- scoreVariance:     some fixed value (or later: an array)
- availability:      the probability that the player is available for a match 
                     at time instance t
- battles:           array of battle ids that the player played
- scores:            player score after every battle
- battleRanks:       team ranks after every battle

Every battle:
- id:                unique battle id
- time:              time unit (integer) at which the battle took place
- teamCount:         number of teams taking part
- playerCount:       number of players taking part
- teams:             array of teams
      - id:                team id, unique within the battle
      - members:           an array of player ids
      - individualScores:  array of scores for every player
      - teamScore:         score of the team (e.g. the average of individuals)
      - rank:              rank of the team within the battle