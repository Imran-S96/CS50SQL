-- Another parent wants to send their child to a district with few other students.
-- In 9.sql, write a SQL query to find the name (or names) of the school district(s) with the single least number of pupils. Report only the name(s).

SELECT D."name" FROM expenditures AS E
INNER JOIN districts AS D
ON D."id" = E."district_id"
ORDER BY E."pupils" ASC
LIMIT 1;


-- +-------+
-- | name  |
-- +-------+
-- | Savoy |
-- +-------+
