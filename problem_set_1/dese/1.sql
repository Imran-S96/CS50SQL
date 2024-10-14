-- Your colleague is preparing a map of all public schools in Massachusetts.
-- In 1.sql, write a SQL query to find the names and cities of all public schools in Massachusetts.
-- Keep in mind that not all schools in the schools table are considered traditional public schools.
-- Massachusetts also recognizes charter schools, which (according to DESE!) are considered distinct.

SELECT "name", "city" FROM schools
WHERE "state" = 'MA' AND "type" = 'Public School';


-- LIMIT 10
-- +---------------------------------------+------------+
-- |                 name                  |    city    |
-- +---------------------------------------+------------+
-- | Abington Early Education Program      | Abington   |
-- | Abington High                         | Abington   |
-- | Abington Middle School                | Abington   |
-- | Beaver Brook Elementary               | Abington   |
-- | Woodsdale Elementary School           | Abington   |
-- | Acton-Boxborough Regional High        | Acton      |
-- | Blanchard Memorial School             | Boxborough |
-- | C.T. Douglas Elementary School        | Acton      |
-- | Carol Huebner Early Childhood Program | Acton      |
-- | Luther Conant School                  | Acton      |
-- +---------------------------------------+------------+
