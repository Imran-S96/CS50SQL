-- write a SQL query to count how many prints by Hiroshige have English titles that refer to the “Eastern Capital”.
 -- Hiroshige’s prints were created in Japan’s “Edo period,”
 -- referencing the eastern capital city of Edo, now Tokyo.

SELECT COUNT(*) AS "hiroshige_eastern_capital_prints" FROM views
WHERE "english_title" LIKE '%eastern%capital%' AND "artist" LIKE 'Hiroshige';

-- +----------------------------------+
-- | hiroshige_eastern_capital_prints |
-- +----------------------------------+
-- | 9                                |
-- +----------------------------------+
