-- 7.write a SQL query to list the titles and topics of all episodes teaching fractions.

SELECT "title", "topic" FROM episodes
WHERE "topic" LIKE '%fractions%';

+---------------------------------------+--------------------------------------------+
|                 title                 |                   topic                    |
+---------------------------------------+--------------------------------------------+
| Zeus on the Loose                     | Fractions                                  |
| Harriet Hippo & the Mean Green        | Equivalent Fractions                       |
| Shari Spotter and the Cosmic Crumpets | Mixed-Number Fractions                     |
| A Fraction of a Chance                | Fractions 101                              |
| Peace, Love, and Hackerness           | Measuring with Mixed Number Fractions      |
| Trash Creep                           | Fractions, Effects of Trash, and Recycling |
+---------------------------------------+--------------------------------------------+