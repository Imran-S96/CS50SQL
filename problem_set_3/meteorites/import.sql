-- CREATE TEMP TABLE

-- CREATE TABLE "meteorites_temp" (
--     "name" TEXT,
--     "id" INT,
--     "nametype" TEXT,
--     "class" TEXT,
--     "mass" NUMERIC,
--     "discovery" TEXT,
--     "year" INT,
--     "lat" NUMERIC,
--     "long" NUMERIC
-- );

-- Import CSV into temporary table

.import --csv meteorites.csv meteorites_temp

-- 1.Any empty values in meteorites.csv are represented by NULL in the meteorites table.
-- Keep in mind that the mass, year, lat, and long columns have empty values in the CSV.

UPDATE "meteorites_temp"
SET "mass" = NULL
WHERE "mass" = '';

UPDATE "meteorites_temp"
SET "year" = NULL
WHERE "year" = '';

UPDATE "meteorites_temp"
SET "lat" = NULL
WHERE "lat" = '';

UPDATE "meteorites_temp"
SET "long" = NULL
WHERE "long" = '';

-- 2.All columns with decimal values (e.g., 70.4777) should be rounded to the nearest hundredths place (e.g., 70.4777 becomes 70.48).
-- Keep in mind that the mass, lat, and long columns have decimal values.

UPDATE "meteorites_temp"
SET "mass" = ROUND("mass", 2)
WHERE "mass" IS NOT NULL;

UPDATE "meteorites_temp"
SET "lat" = ROUND("lat", 2)
WHERE "lat" IS NOT NULL;

UPDATE "meteorites_temp"
SET "long" = ROUND("long", 2)
WHERE "long" IS NOT NULL;

-- 3 & 4.The meteorites are sorted by year, oldest to newest, and then—if any two meteorites landed in the same year—by name, in alphabetical order.


CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "class" TEXT NOT NULL,
    "mass" NUMERIC,
    "discovery" TEXT NOT NULL CHECK("discovery" IN ('Fell', 'Found')),
    "year" NUMERIC,
    "lat" NUMERIC,
    "long" NUMERIC,
    PRIMARY KEY("id")
);

-- Insert filtered data into final table
INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long"
FROM "meteorites_temp"
WHERE "nametype" != 'Relict'
ORDER BY "year", "name";
