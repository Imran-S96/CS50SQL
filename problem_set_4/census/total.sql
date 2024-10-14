-- In total.sql, write a SQL statement to create a view named total. This view should contain the sums for each numeric column in census, across all districts and localities.
-- Ensure the view contains each of the following columns:

-- families, which is the sum of families from every locality in Nepal.
-- households, which is the sum of households from every locality in Nepal.
-- population, which is the sum of the population from every locality in Nepal.
-- male, which is the sum of people identifying as male from every locality in Nepal.
-- female, which is the sum of people identifying as female from every locality in Nepal.

CREATE VIEW "total" AS
SELECT SUM("families") AS "total_families", SUM("households") AS "households", SUM("population") AS "total_population", SUM("male") AS "total_males", SUM("female") AS "total_female" FROM "census";


-- +----------------+------------+------------------+-------------+--------------+
-- | total_families | households | total_population | total_males | total_female |
-- +----------------+------------+------------------+-------------+--------------+
-- | 6759473        | 5642674    | 29074990         | 14188639    | 14886351     |
-- +----------------+------------+------------------+-------------+--------------+
