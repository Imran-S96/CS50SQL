-- In june_vacancies.sql, write a SQL statement to create a view named june_vacancies. This view should contain all listings and the number of days in June of 2023 that they remained vacant.
--  Ensure the view contains the following columns:

-- id, which is the id of the listing from the listings table.
-- property_type, from the listings table.
-- host_name, from the listings table.
-- days_vacant, which is the number of days in June of 2023, that the given listing was marked as available.


CREATE VIEW "june_vacancies" AS
SELECT L."id", "property_type", "host_name", COUNT(A."date") AS "vacant"
FROM "listings" AS L
JOIN "availabilities" AS A
ON A."listing_id" = L."id"
WHERE "date" BETWEEN '2023-06-01' AND '2023-06-31' AND "available" = 'TRUE'
GROUP BY A."listing_id";

-- SELECT * FROM june_vacancies

-- LIMIT 10
-- +--------+-----------------------------------+-------------+--------+
-- |   id   |           property_type           |  host_name  | vacant |
-- +--------+-----------------------------------+-------------+--------+
-- | 10813  | Entire rental unit                | Michelle    | 9      |
-- | 10986  | Entire condo                      | Michelle    | 9      |
-- | 67774  | Entire condo                      | Anne        | 1      |
-- | 184893 | Private room in bed and breakfast | Dawn        | 9      |
-- | 210097 | Entire home                       | Maria Elena | 2      |
-- | 257588 | Entire rental unit                | Meri        | 1      |
-- | 297994 | Entire home                       | Albert      | 7      |
-- | 619142 | Entire home                       | Joe         | 5      |
-- | 646087 | Private room in townhouse         | Ingrid      | 3      |
-- | 743211 | Entire home                       | Margaret    | 3      |
-- +--------+-----------------------------------+-------------+--------+
