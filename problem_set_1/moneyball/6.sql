-- Which teams might be the biggest competition for the A’s this year?
-- In 6.sql, write a SQL query to return the top 5 teams, sorted by the total number of hits by players in 2001.
-- Call the column representing total hits by players in 2001 “total hits”.
-- Sort by total hits, highest to lowest.
-- Your query should return two columns, one for the teams’ names and one for their total hits in 2001.

SELECT T."name", SUM(P."H") AS "total hits" FROM teams AS T
INNER JOIN performances AS P
ON P."team_id" = T."id"
WHERE p."year" = 2001
GROUP BY T."name"
ORDER BY "total hits" DESC
LIMIT 5;


-- +-------------------+------------+
-- |       name        | total hits |
-- +-------------------+------------+
-- | Colorado Rockies  | 1663       |
-- | Seattle Mariners  | 1637       |
-- | Texas Rangers     | 1566       |
-- | Cleveland Indians | 1559       |
-- | Minnesota Twins   | 1514       |
-- +-------------------+------------+
