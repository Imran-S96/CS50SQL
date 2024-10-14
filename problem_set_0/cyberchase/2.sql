-- 2.list the season number of, and title of, the first episode of every season.

SELECT "season", "title" FROM episodes
WHERE "episode_in_season" = 1;

+--------+------------------------------------+
| season |               title                |
+--------+------------------------------------+
| 1      | Lost My Marbles                    |
| 2      | Hugs & Witches                     |
| 3      | EcoHaven CSE                       |
| 4      | Balancing Act                      |
| 5      | The Halloween Howl                 |
| 6      | Digit's B-Day Surprise             |
| 7      | Weather Watchers Gone With The Fog |
| 8      | The Hacker's Challenge             |
| 9      | An Urchin Matter                   |
| 10     | Fit to be Heroes                   |
| 11     | Watts of Halloween Trouble         |
| 12     | Space Waste Odyssey                |
| 13     | Duck Stop                          |
| 14     | Clean-Up on Isle 8                 |
+--------+------------------------------------+