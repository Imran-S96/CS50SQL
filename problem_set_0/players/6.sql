-- write a SQL query to return the first name, last name, and debut date of players born in Pittsburgh, Pennsylvania (PA).
-- Sort the results first by debut date—from most recent to oldest—then alphabetically by first name, followed by last name.

SELECT "first_name","last_name","debut" FROM players
WHERE "birth_state" = 'PA' AND "birth_city" = 'Pittsburgh'
ORDER BY "debut" DESC, "first_name" ASC, "last_name" ASC
LIMIT 10;

-- limit table to 10 as too many records
-- +------------+-----------+------------+
-- | first_name | last_name |   debut    |
-- +------------+-----------+------------+
-- | Mason      | Miller    | 2023-04-19 |
-- | Alex       | Kirilloff | 2021-04-14 |
-- | David      | Bednar    | 2019-09-01 |
-- | Ian        | Happ      | 2017-05-13 |
-- | Kevan      | Smith     | 2016-09-01 |
-- | Derek      | Law       | 2016-04-15 |
-- | Blake      | Lalli     | 2012-05-18 |
-- | J. J.      | Hoover    | 2012-04-25 |
-- | Neil       | Walker    | 2009-09-01 |
-- | Ryan       | Garko     | 2005-09-18 |
-- +------------+-----------+------------+
