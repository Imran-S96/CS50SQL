-- In most_populated.sql, write a SQL statement to create a view named most_populated. This view should contain, in order from greatest to least, the most populated districts in Nepal.
-- Ensure the view contains each of the following columns:

-- district, which is the name of the district.
-- families, which is the total number of families in the district.
-- households, which is the total number of households in the district.
-- population, which is the total population of the district.
-- male, which is the total number of people identifying as male in the district.
-- female, which is the total number of people identifying as female in the district.

CREATE VIEW "most_populated" AS
SELECT "district" , SUM("families") AS "total_families", SUM("households") AS "total_households", SUM("population") AS "total_population", SUM("male") AS "total_males", SUM("female") AS "total_female"
FROM "census"
GROUP BY "district"
ORDER BY "total_population" DESC;


-- Limit 10

-- +-----------+----------------+------------------+------------------+-------------+--------------+
-- | district  | total_families | total_households | total_population | total_males | total_female |
-- +-----------+----------------+------------------+------------------+-------------+--------------+
-- | Kathmandu | 537916         | 275806           | 1988606          | 1001798     | 986808       |
-- | Morang    | 274651         | 241415           | 1147186          | 557527      | 589659       |
-- | Rupandehi | 241432         | 195087           | 1117667          | 546297      | 571370       |
-- | Jhapa     | 246138         | 219989           | 994090           | 477496      | 516594       |
-- | Sunsari   | 216874         | 181777           | 932452           | 452087      | 480365       |
-- | Kailali   | 200513         | 183692           | 907816           | 436652      | 471164       |
-- | Dhanusa   | 180826         | 146470           | 872713           | 433812      | 438901       |
-- | Sarlahi   | 168406         | 138412           | 856443           | 432599      | 423844       |
-- | Rautahat  | 139355         | 111563           | 821205           | 412269      | 408936       |
-- | Siraha    | 154593         | 123536           | 748416           | 369049      | 379367       |
-- +-----------+----------------+------------------+------------------+-------------+--------------+
