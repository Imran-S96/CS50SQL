-- You might notice that when running

-- SELECT * FROM "listings" LIMIT 5;
-- the results look quite wonky! The description column contains descriptions with many line breaks, each of which are printed to your terminal.

-- In no_descriptions.sql, write a SQL statement to create a view named no_descriptions that includes all of the columns in the listings table except for description.

CREATE VIEW "no_descriptions" AS
SELECT "id", "property_type", "host_name", "accommodates", "bedrooms" FROM "listings";

-- SELECT * FROM "no_descriptions";

-- limit 10

-- +-------+----------------------+-----------+--------------+----------+
-- |  id   |    property_type     | host_name | accommodates | bedrooms |
-- +-------+----------------------+-----------+--------------+----------+
-- | 3781  | Entire rental unit   | Frank     | 2            | 1        |
-- | 5506  | Entire guest suite   | Terry     | 2            | 1        |
-- | 6695  | Entire condo         | Terry     | 4            | NULL     |
-- | 8789  | Entire rental unit   | Anne      | 2            | 1        |
-- | 10813 | Entire rental unit   | Michelle  | 2            | NULL     |
-- | 10986 | Entire condo         | Michelle  | 2            | NULL     |
-- | 18711 | Entire rental unit   | Lance     | 7            | 3        |
-- | 29765 | Entire rental unit   | Elizabeth | 2            | 1        |
-- | 40601 | Private room in home | Robert    | 2            | NULL     |
-- | 45987 | Entire rental unit   | Atef      | 3            | 1        |
-- +-------+----------------------+-----------+--------------+----------+
