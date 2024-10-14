-- write a SQL query to find the average entropy of prints by Hiroshige, rounded to two decimal places.
-- Call the resulting column “Hiroshige Average Entropy”.

SELECT ROUND(AVG("entropy"),2) AS "horoshige_avg_entropy_print" FROM views
WHERE "artist" = 'Hiroshige';

-- +-----------------------------+
-- | horoshige_avg_entropy_print |
-- +-----------------------------+
-- | 7.42                        |
-- +-----------------------------+
