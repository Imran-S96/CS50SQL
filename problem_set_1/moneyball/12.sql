-- Hits are great, but so are RBIs! In 12.sql, write a SQL query to find the players among the 10 least expensive players per hit and among the 10 least expensive players per RBI in 2001.

-- Your query should return a table with two columns, one for the players’ first names and one of their last names.
-- You can calculate a player’s salary per RBI by dividing their 2001 salary by their number of RBIs in 2001.
-- You may assume, for simplicity, that a player will only have one salary and one performance in 2001.
-- Order your results by player ID, least to greatest (or alphabetically by last name, as both are the same in this case!).
-- Keep in mind the lessons you’ve learned in 10.sql and 11.sql


WITH CTE_hit_cost AS (
    SELECT
        pf.player_id,
        s.salary,
        pf.H,
        s.salary / pf.H AS dollars_per_hit
    FROM
        salaries AS s
    JOIN
        performances AS pf
        ON s.player_id = pf.player_id
        AND s.year = pf.year
    WHERE
        s.year = 2001
        AND pf.H > 0
),

hit_cost_ranked AS (
    SELECT
        player_id,
        dollars_per_hit,
        RANK() OVER (ORDER BY dollars_per_hit) AS dollars_per_hit_rank
    FROM
        CTE_hit_cost
),

rbi_cost AS (
    SELECT
        pf.player_id,
        s.salary,
        pf.RBI,
        s.salary / pf.RBI AS dollars_per_rbi
    FROM
        salaries AS s
    JOIN
        performances AS pf
        ON s.player_id = pf.player_id
        AND s.year = pf.year
    WHERE
        s.year = 2001
        AND pf.RBI > 0
),

rbi_cost_ranked AS (
    SELECT
        player_id,
        dollars_per_rbi,
        RANK() OVER (ORDER BY dollars_per_rbi) AS dollars_per_rbi_rank
    FROM
        rbi_cost
),

cheapest_players AS (
    SELECT
        hcr.player_id
    FROM
        hit_cost_ranked AS hcr
    INNER JOIN
        rbi_cost_ranked AS rcr
        ON hcr.player_id = rcr.player_id
    WHERE
        hcr.dollars_per_hit_rank <= 10
        AND rcr.dollars_per_rbi_rank <= 10
)

SELECT
    pl.first_name,
    pl.last_name
FROM
    cheapest_players AS cp
INNER JOIN
    players AS pl
    ON cp.player_id = pl.id
ORDER BY
    pl.id;
