-- In one_bedrooms.sql, write a SQL statement to create a view named one_bedrooms. This view should contain all listings that have exactly one bedroom. Ensure the view contains the following columns:

-- id, which is the id of the listing from the listings table.
-- property_type, from the listings table.
-- host_name, from the listings table.
-- accommodates, from the listings table.


CREATE VIEW "one_bedrooms" AS
SELECT "id", "property_type", "host_name", "accommodates" FROM "listings"
WHERE "bedrooms" = 1;

-- SELECT * FROM "one_bedrooms";

-- LIMIT 10

-- +--------+---------------------------+------------------+--------------+
-- |   id   |       property_type       |    host_name     | accommodates |
-- +--------+---------------------------+------------------+--------------+
-- | 3781   | Entire rental unit        | Frank            | 2            |
-- | 5506   | Entire guest suite        | Terry            | 2            |
-- | 8789   | Entire rental unit        | Anne             | 2            |
-- | 29765  | Entire rental unit        | Elizabeth        | 2            |
-- | 45987  | Entire rental unit        | Atef             | 3            |
-- | 67774  | Entire condo              | Anne             | 3            |
-- | 197972 | Entire rental unit        | Chris & Kristina | 2            |
-- | 220676 | Private room in townhouse | Howard           | 3            |
-- | 507525 | Entire rental unit        | Guy              | 2            |
-- | 583255 | Entire rental unit        | Valery           | 2            |
-- +--------+---------------------------+------------------+--------------+
