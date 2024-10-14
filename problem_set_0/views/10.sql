-- write a SQL query to answer a question of your choice about the prints. The query should:
-- Make use of AS to rename a column
-- Involve at least one condition, using WHERE
-- Sort by at least one column, using ORDER BY

SELECT "english_title" AS "hokusai_prints" FROM views
WHERE "artist"= 'Hokusai'
ORDER BY "english_title" ASC;

-- +-----------------------------------------------------------------------------------+
-- |                                  hokusai_prints                                   |
-- +-----------------------------------------------------------------------------------+
-- | A View of Mount Fuji Across Lake Suwa                                             |
-- | A sketch of the Mitsui shop in Suruga in Edo                                      |
-- | Asakusa Hongan-ji temple in the Eastern capital                                   |
-- | Barrier Town on the Sumida River                                                  |
-- | Bay of Noboto                                                                     |
-- | Cushion Pine at Aoyama                                                            |
-- | Ejiri in Suruga Province                                                          |
-- | Enoshima in Sagami Province                                                       |
-- | Fine Wind, Clear Morning                                                          |
-- | Fuji View Field in Owari Province                                                 |
-- | Hodogaya on the Tōkaidō                                                           |
-- | Inume Pass, Kōshū                                                                 |
-- | Kajikazawa in Kai Province                                                        |
-- | Mishima Pass in Kai Province                                                      |
-- | Mount Fuji from the mountains of Tōtōmi                                           |
-- | Mount Fuji reflects in Lake Kawaguchi, seen from the Misaka Pass in Kai Province  |
-- | Nihonbashi bridge in Edo                                                          |
-- | Sazai hall - Temple of Five Hundred Rakan                                         |
-- | Senju, Musashi But                                                                |
-- | Shichiri beach in Sagami Province                                                 |
-- | Shimomeguro                                                                       |
-- | Shore of Tago Bay, Ejiri at Tōkaidō                                               |
-- | Sundai, Edo                                                                       |
-- | Sunset across the Ryōgoku bridge from the bank of the Sumida River at Onmayagashi |
-- | Tama River in Musashi Province                                                    |
-- | Tea house at Koishikawa. The morning after a snowfall                             |
-- | The Great Wave off Kanagawa                                                       |
-- | The Kazusa Province sea route                                                     |
-- | The lake of Hakone in Sagami Province                                             |
-- | Thunderstorm Beneath the Summit                                                   |
-- | Tsukuda Island in Musashi Province                                                |
-- | Umezawa in Sagami Province                                                        |
-- | Under Mannen Bridge at Fukagawa                                                   |
-- | Ushibori in Hitachi Province                                                      |
-- | Watermill at Onden                                                                |
-- | Yoshida at Tōkaidō                                                                |
-- +-----------------------------------------------------------------------------------+
