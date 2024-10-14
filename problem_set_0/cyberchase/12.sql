-- 12.count the number of unique episode titles.

SELECT COUNT(DISTINCT "title") AS "unique_episode_titles" FROM episodes;

+-----------------------+
| unique_episode_titles |
+-----------------------+
| 136                   |
+-----------------------+