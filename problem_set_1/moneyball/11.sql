-- You need a player that can get hits. Who might be the most underrated? In 11.sql, write a SQL query to find the 10 least expensive players per hit in 2001.

-- Your query should return a table with three columns, one for the players’ first names, one of their last names, and one called “dollars per hit”.
-- You can calculate the “dollars per hit” column by dividing a player’s 2001 salary by the number of hits they made in 2001. Recall you can use AS to rename a column.
-- Dividing a salary by 0 hits will result in a NULL value. Avoid the issue by filtering out players with 0 hits.
-- Sort the table by the “dollars per hit” column, least to most expensive. If two players have the same “dollars per hit”, order by first name, followed by last name, in alphabetical order.
-- As in 10.sql, ensure that the salary’s year and the performance’s year match.
-- You may assume, for simplicity, that a player will only have one salary and one performance in 2001.

SELECT P."first_name",P."last_name", (S."salary"/PR."H") AS "dollars per hit" FROM players AS P
INNER JOIN salaries AS S
ON S."player_id" = P."id"
INNER JOIN performances AS PR
ON PR."player_id" = P."id"
WHERE S."year" = PR."year" AND PR."H" <> 0 AND S."year" = 2001
ORDER BY "dollars per hit" ASC, P."first_name" ASC , P."last_name" ASC
LIMIT 10;



-- +------------+--------------+-----------------+
-- | first_name |  last_name   | dollars per hit |
-- +------------+--------------+-----------------+
-- | Albert     | Pujols       | 1030            |
-- | Juan       | Pierre       | 1064            |
-- | Jimmy      | Rollins      | 1111            |
-- | David      | Eckstein     | 1204            |
-- | Doug       | Mientkiewicz | 1295            |
-- | Luis       | Rivas        | 1333            |
-- | Terrence   | Long         | 1352            |
-- | Paul       | Lo Duca      | 1564            |
-- | Torii      | Hunter       | 1564            |
-- | Aramis     | Ramirez      | 1574            |
-- +------------+--------------+-----------------+
