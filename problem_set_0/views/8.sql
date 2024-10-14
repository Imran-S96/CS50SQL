-- write a SQL query to list the English titles of the 5 prints with the least contrast by Hokusai, from least to highest contrast.
-- Compare them to this list on Wikipedia to see if your results match the print’s aesthetics.

SELECT "english_title" AS "hokusai_5_prints_least_contrast" FROM views
WHERE "artist" = 'Hokusai'
ORDER BY "contrast" ASC
LIMIT 5;


-- +----------------------------------------------------------------------------------+
-- |                         hokusai_5_prints_least_contrast                          |
-- +----------------------------------------------------------------------------------+
-- | Mount Fuji reflects in Lake Kawaguchi, seen from the Misaka Pass in Kai Province |
-- | Kajikazawa in Kai Province                                                       |
-- | Shimomeguro                                                                      |
-- | Bay of Noboto                                                                    |
-- | Ushibori in Hitachi Province                                                     |
-- +----------------------------------------------------------------------------------+
