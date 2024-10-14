-- In frequently_reviewed.sql, write a SQL statement to create a view named frequently_reviewed.
-- This view should contain the 100 most frequently reviewed listings, sorted from most- to least-frequently reviewed. Ensure the view contains the following columns:

-- id, which is the id of the listing from the listings table.
-- property_type, from the listings table.
-- host_name, from the listings table.
-- reviews, which is the number of reviews the listing has received.
-- If any two listings have the same number of reviews, sort by property_type (in alphabetical order), followed by host_name (in alphabetical order).


CREATE VIEW "frequently_reviewed" AS
SELECT L."id", "property_type", "host_name", COUNT("listing_id") AS "reviews"
FROM "listings" AS L
JOIN "reviews" AS R
ON R."listing_id" = L."id"
GROUP BY R."listing_id"
ORDER BY R."listing_id" DESC, "property_type", "host_name"
LIMIT 100;

-- SELECT * FROM frequently_reviewed;

-- LIMIT 10
-- +--------------------+----------------------+-----------+---------+
-- |         id         |    property_type     | host_name | reviews |
-- +--------------------+----------------------+-----------+---------+
-- | 910176701394441565 | Entire rental unit   | Berceste  | 1       |
-- | 907133683582851756 | Entire rental unit   | Stone     | 1       |
-- | 903924529985256996 | Entire rental unit   | Adam      | 2       |
-- | 901693942583530629 | Private room in home | Selim     | 1       |
-- | 900018821584091710 | Entire rental unit   | Gayle     | 1       |
-- | 899959582878498380 | Entire rental unit   | Ellie     | 3       |
-- | 896426215566639130 | Entire rental unit   | Seif      | 2       |
-- | 896170185862100440 | Entire rental unit   | Eddie     | 1       |
-- | 893975999133947853 | Entire rental unit   | Peter     | 2       |
-- | 893705478041704054 | Entire rental unit   | Adam      | 2       |
-- +--------------------+----------------------+-----------+---------+
