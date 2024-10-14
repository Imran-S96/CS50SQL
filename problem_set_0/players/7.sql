-- write a SQL query to count the number of players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa.

SELECT COUNT(*) AS "players_bat_and_throw_with_opposite_limbs" FROM players
WHERE ("bats" = 'R' AND "throws" = "L") OR ("bats" = 'L' AND "throws" = "R");

-- +-------------------------------------------+
-- | players_bat_and_throw_with_opposite_limbs |
-- +-------------------------------------------+
-- | 2925                                      |
-- +-------------------------------------------+
