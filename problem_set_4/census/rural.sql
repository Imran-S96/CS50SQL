-- write a SQL statement to create a view named rural. This view should contain all census records relating to a rural municipality (identified by including “rural” in their name).
-- Ensure the view contains all of the columns from the census table.

CREATE VIEW "rural" AS
SELECT * FROM "census"
WHERE "locality" LIKE '%Rural%';



-- LIMIT10

-- +----+-----------+----------------------------------------+----------+------------+------------+-------+--------+
-- | id | district  |                locality                | families | households | population | male  | female |
-- +----+-----------+----------------------------------------+----------+------------+------------+-------+--------+
-- | 1  | Taplejung | Aathrai Tribeni Rural Municipality     | 2869     | 2735       | 12288      | 6005  | 6283   |
-- | 2  | Taplejung | Maiwakhola Rural Municipality          | 2275     | 2178       | 10365      | 5264  | 5101   |
-- | 3  | Taplejung | Meringden Rural Municipality           | 2683     | 2528       | 12040      | 6181  | 5859   |
-- | 4  | Taplejung | Mikwakhola Rural Municipality          | 1862     | 1792       | 7991       | 4000  | 3991   |
-- | 5  | Taplejung | Phaktanglung Rural Municipality        | 2864     | 2700       | 11925      | 6239  | 5686   |
-- | 7  | Taplejung | Sidingba Rural Municipality            | 2604     | 2484       | 10981      | 5593  | 5388   |
-- | 8  | Taplejung | Sirijangha Rural Municipality          | 3329     | 3197       | 14186      | 7227  | 6959   |
-- | 9  | Taplejung | Pathivara Yangwarak Rural Municipality | 2738     | 2637       | 11797      | 5855  | 5942   |
-- | 10 | Panchthar | Falelung Rural Municipality            | 4940     | 4773       | 20531      | 10211 | 10320  |
-- | 11 | Panchthar | Falgunanda Rural Municipality          | 5293     | 4968       | 21253      | 10417 | 10836  |
-- +----+-----------+----------------------------------------+----------+------------+------------+-------+--------+

