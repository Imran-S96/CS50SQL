-- The general manager has asked you for a report which details each player’s name, their salary for each year they’ve been playing, and their number of home runs for each year they’ve been playing.
-- To be precise, the table should include:

-- All player’s first names
-- All player’s last names
-- All player’s salaries
-- All player’s home runs
-- The year in which the player was paid that salary and hit those home runs
-- In 10.sql, write a query to return just such a table.

-- Your query should return a table with five columns, per the above.
-- Order the results, first and foremost, by player’s IDs (least to greatest).
-- Order rows about the same player by year, in descending order.
-- Consider a corner case: suppose a player has multiple salaries or performances for a given year. Order them first by number of home runs, in descending order, followed by salary, in descending order.
-- Be careful to ensure that, for a single row, the salary’s year and the performance’s year match.


SELECT P."first_name",P."last_name",S."salary",PR."HR",S."year" FROM players AS P
INNER JOIN salaries AS S
ON S."player_id" = P."id"
INNER JOIN performances AS PR
ON PR."player_id" = P."id"
WHERE S."year" = PR."year"
ORDER BY P."id" ASC, S."year" DESC, PR."HR" DESC, S."salary" DESC;




-- +------------+-----------+---------+----+------+
-- | first_name | last_name | salary  | HR | year |
-- +------------+-----------+---------+----+------+
-- | Don        | Aase      | 400000  | 0  | 1989 |
-- | Don        | Aase      | 675000  | 0  | 1988 |
-- | Don        | Aase      | 625000  | 0  | 1987 |
-- | Don        | Aase      | 600000  | 0  | 1986 |
-- | Jeff       | Abbott    | 300000  | 0  | 2001 |
-- | Jeff       | Abbott    | 255000  | 3  | 2000 |
-- | Jeff       | Abbott    | 255000  | 2  | 1999 |
-- | Jeff       | Abbott    | 175000  | 12 | 1998 |
-- | Jim        | Abbott    | 400000  | 0  | 1999 |
-- | Jim        | Abbott    | 2200000 | 0  | 1996 |
-- +------------+-----------+---------+----+------+
