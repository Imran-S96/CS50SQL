
-- *** The Lost Letter ***

SELECT "package_id", "address_id", "action", "address", "type" FROM scans AS S
INNER JOIN addresses AS A
ON S."address_id" = A."id"
WHERE "package_id" = (
  SELECT "id" FROM packages
  WHERE "from_address_id" =
  ( SELECT "id" FROM addresses
  WHERE "address" = '900 Somerville Avenue')
  AND "to_address_id" =
  (SELECT "id" FROM addresses
  WHERE "address" LIKE '2 Fi%'));

--   +------------+------------+--------+-----------------------+-------------+
-- | package_id | address_id | action |        address        |    type     |
-- +------------+------------+--------+-----------------------+-------------+
-- | 384        | 432        | Pick   | 900 Somerville Avenue | Residential |
-- | 384        | 854        | Drop   | 2 Finnigan Street     | Residential |
-- +------------+------------+--------+-----------------------+-------------+

-- *** The Devious Delivery ***

SELECT "package_id", "contents", "action", "address", "type" FROM scans AS S
INNER JOIN addresses AS A
ON S."address_id" = A."id"
INNER JOIN packages AS P
ON S."package_id" = P."id"
WHERE S."package_id" =
 (SELECT "id" FROM packages AS P
  WHERE "contents" LIKE '%duck%' AND "from_address_id" IS NULL)
  AND S."action" = 'Drop';

-- +------------+---------------+--------+------------------+----------------+
-- | package_id |   contents    | action |     address      |      type      |
-- +------------+---------------+--------+------------------+----------------+
-- | 5098       | Duck debugger | Drop   | 7 Humboldt Place | Police Station |
-- +------------+---------------+--------+------------------+----------------+



-- *** The Forgotten Gift ***

SELECT "package_id", "name" AS "driver_name" FROM scans AS S
INNER JOIN drivers AS D
ON S."driver_id" = D."id"
WHERE "package_id" =(
  SELECT "id" FROM packages
  WHERE "from_address_id" = (
  SELECT "id" FROM addresses
  WHERE "address" = '109 Tileston Street'))
ORDER BY "timestamp" DESC
LIMIT 1;


-- +------------+-------------+
-- | package_id | driver_name |
-- +------------+-------------+
-- | 9523       | Mikel       |
-- +------------+-------------+
