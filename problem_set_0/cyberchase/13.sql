-- 13. write a SQL query to explore a question of your choice. This query should:
-- Involve at least one condition, using WHERE with AND or OR
-- List the seasons, episodes , titles of all episodes in season 6 and air_date between 2002 to 2010

SELECT "season", "episode_in_season", "title" FROM episodes
WHERE "season" = 6 AND "air_date" BETWEEN '2002-01-01' AND '2010-12-31';

+--------+-------------------+---------------------------+
| season | episode_in_season |           title           |
+--------+-------------------+---------------------------+
| 6      | 1                 | Digit's B-Day Surprise    |
| 6      | 2                 | When Penguins Fly         |
| 6      | 3                 | Unhappily Ever After      |
| 6      | 4                 | Escape From Merlin's Maze |
| 6      | 5                 | Step By Step              |
| 6      | 6                 | Team Spirit               |
| 6      | 7                 | Jimaya Jam                |
| 6      | 8                 | A Perfect Score           |
| 6      | 9                 | Chaos as Usual            |
| 6      | 10                | Spheres of Fears          |
+--------+-------------------+---------------------------+
