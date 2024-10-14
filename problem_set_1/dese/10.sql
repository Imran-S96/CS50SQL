-- In Massachusetts, school district expenditures are in part determined by local taxes on property (e.g., home) values. In 10.sql,
-- write a SQL query to find the 10 public school districts with the highest per-pupil expenditures. Your query should return the names of the districts and the per-pupil expenditure for each


SELECT D."name", E."per_pupil_expenditure" FROM expenditures AS E
INNER JOIN districts AS D
ON D."id" = E."district_id"
WHERE D."id" IN (
    SELECT "district_id"
    FROM schools
    WHERE "type" = "Public School"
)
ORDER BY "per_pupil_expenditure" DESC
LIMIT 10;



-- +-----------------------------------------+-----------------------+
-- |                  name                   | per_pupil_expenditure |
-- +-----------------------------------------+-----------------------+
-- | Provincetown                            | 41318.9               |
-- | Cambridge                               | 35113.7               |
-- | Martha's Vineyard                       | 34611.23              |
-- | Minuteman Regional Vocational Technical | 32814.39              |
-- | Wellfleet                               | 32788.2               |
-- | Truro                                   | 32245.03              |
-- | Orleans                                 | 31703.4               |
-- | Weston                                  | 30295.95              |
-- | Tisbury                                 | 29598.7               |
-- | Erving                                  | 28975.86              |
-- +-----------------------------------------+-----------------------+
