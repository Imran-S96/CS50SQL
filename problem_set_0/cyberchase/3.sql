-- 3.find the production code for the episode “Hackerized!”.

SELECT "production_code" FROM episodes
WHERE "title" = 'Hackerized!'

+-----------------+
| production_code |
+-----------------+
| CYB091          |
+-----------------+