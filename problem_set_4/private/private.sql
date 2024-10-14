CREATE TABLE cipher (
    code_1 INT,
    code_2 INT,
    code_3 INT
);

INSERT INTO cipher (code_1, code_2, code_3)
VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);

CREATE VIEW "message" AS

WITH CTE AS
    (   SELECT * FROM "sentences" AS S
        INNER JOIN "cipher" AS C
        ON S."id" = C."code_1"
        )

SELECT substr("sentence", code_2, code_3) AS "phrase" FROM CTE;


-- +------------+
-- |   phrase   |
-- +------------+
-- | find       |
-- | me in      |
-- | the place  |
-- | you        |
-- | least      |
-- | expect.    |
-- | behind the |
-- | books      |
-- +------------+
