-- write SQL query to answer a question of your choice. This query should:
-- Make use of AS to rename a column
-- Involve at least condition, using WHERE
-- Sort by at least one column using ORDER BY

SELECT "birth_country", COUNT(*) AS "no_players_debut_2000" FROM players
WHERE "debut" LIKE '2000%'
group by "birth_country"
ORDER BY "no_players_debut_2000" desc;


-- +---------------+-----------------------+
-- | birth_country | no_players_debut_2000 |
-- +---------------+-----------------------+
-- | USA           | 151                   |
-- | D.R.          | 21                    |
-- | P.R.          | 9                     |
-- | Venezuela     | 8                     |
-- | Mexico        | 3                     |
-- | Japan         | 3                     |
-- | CAN           | 2                     |
-- | Australia     | 2                     |
-- | South Korea   | 1                     |
-- | Panama        | 1                     |
-- | Nicaragua     | 1                     |
-- | Germany       | 1                     |
-- | Curacao       | 1                     |
-- +---------------+-----------------------+
