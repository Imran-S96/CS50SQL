-- Your team is going to need a great home run hitter. Ken Griffey Jr., a long-time Silver Slugger and Gold Glove award winner, might be a good prospect.
-- In 3.sql, write a SQL query to find Ken Griffey Jr.’s home run history.

-- Sort by year in descending order.
-- Note that there may be two players with the name “Ken Griffey.” This Ken Griffey was born in 1969.
-- Your query should return a table with two columns, one for year and one for home runs.


SELECT "year", "HR" AS "home_runs" FROM performances
WHERE "player_id" IN (
    SELECT "id" FROM players
    WHERE "first_name" LIKE 'Ken' AND "last_name" LIKE 'Griffey' AND "birth_year" = 1969)
ORDER BY "year" DESC;


-- +------+-----------+
-- | year | home_runs |
-- +------+-----------+
-- | 2001 | 22        |
-- | 2000 | 40        |
-- | 1999 | 48        |
-- | 1998 | 56        |
-- | 1997 | 56        |
-- | 1996 | 49        |
-- | 1995 | 17        |
-- | 1994 | 40        |
-- | 1993 | 45        |
-- | 1992 | 27        |
-- | 1991 | 22        |
-- | 1990 | 22        |
-- | 1989 | 16        |
-- +------+-----------+
