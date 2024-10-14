-- You need to make a recommendation about which player (or players) to avoid recruiting.
-- In 7.sql, write a SQL query to find the name of the player who’s been paid the highest salary, of all time, in Major League Baseball.
-- Your query should return a table with two columns, one for the player’s first name and one for their last name.

SELECT "first_name", "last_name" FROM salaries AS S
inner join players AS P
ON P."id" = S."player_id"
ORDER BY "salary" DESC
LIMIT 1;

-- +------------+-----------+
-- | first_name | last_name |
-- +------------+-----------+
-- | Alex       | Rodriguez |
-- +------------+-----------+
