-- What salaries are other teams paying? In 9.sql, write a SQL query to find the 5 lowest paying teams (by average salary) in 2001.

-- Round the average salary column to two decimal places and call it “average salary”.
-- Sort the teams by average salary, least to greatest.
-- Your query should return a table with two columns, one for the teams’ names and one for their average salary.

SELECT t."name", ROUND(AVG(S."salary"),2) AS "average salary" FROM salaries AS S
INNER JOIN teams AS T
ON T."id" = S."team_id"
WHERE S."year" = 2001
GROUP BY T."name"
ORDER BY "average salary"
LIMIT 5;



-- +--------------------+----------------+
-- |        name        | average salary |
-- +--------------------+----------------+
-- | Minnesota Twins    | 893703.7       |
-- | Montreal Expos     | 1134177.42     |
-- | Florida Marlins    | 1153629.03     |
-- | Oakland Athletics  | 1252250.0      |
-- | Kansas City Royals | 1265089.29     |
-- +--------------------+----------------+
