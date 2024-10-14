-- write a SQL query to list the English titles of the 5 brightest prints by Hiroshige, from most to least bright.
-- Compare them to this list on Wikipedia to see if your results match the print’s aesthetics.

SELECT "english_title" AS "hiroshige_5_brighest_prints" FROM views
WHERE "artist" = 'Hiroshige'
ORDER BY "brightness" DESC
LIMIT 5;


-- +----------------------------------------------------+
-- |            hiroshige_5_brighest_prints             |
-- +----------------------------------------------------+
-- | The Sea off the Miura Peninsula in Sagami Province |
-- | Futami Bay in Ise Province                         |
-- | The Sumida Embankment in the Eastern Capital       |
-- | Sukiyagashi in the Eastern Capital                 |
-- | Cherry Blossoms at Honmoku in Musashi Province     |
-- +----------------------------------------------------+
