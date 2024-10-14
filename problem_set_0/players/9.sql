--  write a SQL query to find the players who played their final game in the MLB in 2022.
-- Sort the results alphabetically by first name, then by last name.

SELECT "first_name", "last_name" FROM players
WHERE "final_game" LIKE '2022%'
ORDER BY "first_name" ASC, "last_name" ASC;


-- LIMIT 10, too many records
-- +------------+------------+
-- | first_name | last_name  |
-- +------------+------------+
-- | A. J.      | Alexy      |
-- | A. J.      | Ladwig     |
-- | Aaron      | Ashby      |
-- | Aaron      | Brooks     |
-- | Aaron      | Fletcher   |
-- | Aaron      | Sanchez    |
-- | Aaron      | Whitefield |
-- | Abraham    | Almonte    |
-- | Adalberto  | Mondesi    |
-- | Adam       | Kolarek    |
-- +------------+------------+
