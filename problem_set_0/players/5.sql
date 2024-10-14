-- write a SQL query to return the first and last names of all right-handed batters.
-- Sort the results alphabetically by first name, then by last name.

SELECT "first_name","last_name" FROM players
WHERE "bats" = 'R'
ORDER BY "first_name" ASC, "last_name" ASC;


-- Had to limit table to 10 as too many records
-- +------------+-----------+
-- | first_name | last_name |
-- +------------+-----------+
-- | A. J.      | Achter    |
-- | A. J.      | Alexy     |
-- | A. J.      | Burnett   |
-- | A. J.      | Cole      |
-- | A. J.      | Ellis     |
-- | A. J.      | Griffin   |
-- | A. J.      | Hinch     |
-- | A. J.      | Jimenez   |
-- | A. J.      | Ladwig    |
-- | A. J.      | Morris    |
-- +------------+-----------+
