-- DESE is preparing a report on schools in the Cambridge school district. In 7.sql, write a SQL query to find the names of schools (public or charter!) in the Cambridge school district.
-- Keep in mind that Cambridge, the city, contains a few school districts, but DESE is interested in the district whose name is “Cambridge.”

SELECT "name" FROM schools
WHERE "district_id" IN (
SELECT "id" from districts
WHERE "name" = 'Cambridge')
;


-- +-------------------------------+
-- |             name              |
-- +-------------------------------+
-- | Amigos School                 |
-- | Cambridge Rindge and Latin    |
-- | Cambridge Street Upper School |
-- | Cambridgeport                 |
-- | Fletcher/Maynard Academy      |
-- | Graham and Parks              |
-- | Haggerty                      |
-- | John M Tobin                  |
-- | Kennedy-Longfellow            |
-- | King Open                     |
-- | Maria L. Baldwin              |
-- | Martin Luther King Jr.        |
-- | Morse                         |
-- | Peabody                       |
-- | Putnam Avenue Upper School    |
-- | Rindge Avenue Upper School    |
-- | Vassal Lane Upper School      |
-- +-------------------------------+
