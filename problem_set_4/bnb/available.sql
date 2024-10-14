-- In available.sql, write a SQL statement to create a view named available. This view should contain all dates that are available at all listings. Ensure the view contains the following columns:

-- id, which is the id of the listing from the listings table.
-- property_type, from the listings table.
-- host_name, from the listings table.
-- date, from the availabilities table, which is the date of the availability.

CREATE VIEW "available" AS
SELECT L."id", "property_type", "host_name", "date"
FROM "listings" AS L
JOIN "availabilities" AS A
ON A."listing_id" = L."id"
WHERE "available" = 'TRUE';

-- SELECT * FROM available;


-- LIMIT 10
-- +------+--------------------+-----------+------------+
-- |  id  |   property_type    | host_name |    date    |
-- +------+--------------------+-----------+------------+
-- | 3781 | Entire rental unit | Frank     | 2023-07-14 |
-- | 3781 | Entire rental unit | Frank     | 2023-07-15 |
-- | 3781 | Entire rental unit | Frank     | 2023-07-16 |
-- | 3781 | Entire rental unit | Frank     | 2023-07-17 |
-- | 3781 | Entire rental unit | Frank     | 2023-07-18 |
-- | 3781 | Entire rental unit | Frank     | 2023-07-19 |
-- | 3781 | Entire rental unit | Frank     | 2023-07-20 |
-- | 3781 | Entire rental unit | Frank     | 2023-07-21 |
-- | 3781 | Entire rental unit | Frank     | 2023-07-22 |
-- | 3781 | Entire rental unit | Frank     | 2023-07-23 |
-- +------+--------------------+-----------+------------+
