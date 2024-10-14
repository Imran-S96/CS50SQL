-- You need to make a recommendation about which players the team should consider hiring.
-- With the team’s dwindling budget, the general manager wants to know which players were paid the lowest salaries in 2001.
-- In 4.sql, write a SQL query to find the 50 players paid the least in 2001.

-- Sort players by salary, lowest to highest.
-- If two players have the same salary, sort alphabetically by first name and then by last name.
-- If two players have the same first and last name, sort by player ID.
-- Your query should return three columns, one for players’ first names, one for their last names, and one for their salaries.


SELECT P."first_name", P."last_name", S."salary" FROM players AS P
INNER JOIN salaries AS S
ON S."player_id" = P."id"
WHERE S."year" = 2001
ORDER BY S."salary" ASC, P."first_name" ASC, P."last_name" ASC, S."player_id" ASC
LIMIT 50;



-- +------------+-------------+--------+
-- | first_name |  last_name  | salary |
-- +------------+-------------+--------+
-- | Albert     | Pujols      | 200000 |
-- | Andy       | Thompson    | 200000 |
-- | Ben        | Sheets      | 200000 |
-- | Brad       | Voyles      | 200000 |
-- | Brandon    | Inge        | 200000 |
-- | Chris      | Michalak    | 200000 |
-- | Chris      | Reitsma     | 200000 |
-- | Chris      | Seelbach    | 200000 |
-- | Christian  | Parker      | 200000 |
-- | Courtney   | Duncan      | 200000 |
-- | D'Angelo   | Jimenez     | 200000 |
-- | Damian     | Rolls       | 200000 |
-- | Damon      | Minor       | 200000 |
-- | David      | Eckstein    | 200000 |
-- | Donaldo    | Mendez      | 200000 |
-- | Eddie      | Oropesa     | 200000 |
-- | Gary       | Glover      | 200000 |
-- | Hiram      | Bocachica   | 200000 |
-- | Jack       | Wilson      | 200000 |
-- | Jason      | Grilli      | 200000 |
-- | Jay        | Gibbons     | 200000 |
-- | Jermaine   | Clark       | 200000 |
-- | Jimmy      | Rollins     | 200000 |
-- | Joe        | Beimel      | 200000 |
-- | John       | Barnes      | 200000 |
-- | Jose       | Nunez       | 200000 |
-- | Julio      | Ramirez     | 200000 |
-- | Julio      | Zuleta      | 200000 |
-- | Luis       | Rivas       | 200000 |
-- | Luke       | Prokopec    | 200000 |
-- | Luther     | Hackman     | 200000 |
-- | Nate       | Rolison     | 200000 |
-- | Nick       | Bierbrodt   | 200000 |
-- | Paxton     | Crawford    | 200000 |
-- | Randy      | Choate      | 200000 |
-- | Ryan       | Freel       | 200000 |
-- | Scott      | Mullen      | 200000 |
-- | Scott      | Seabol      | 200000 |
-- | Scott      | Sobkowiak   | 200000 |
-- | Scott      | Stewart     | 200000 |
-- | Shea       | Hillenbrand | 200000 |
-- | Tony       | Cogan       | 200000 |
-- | Wally      | Joyner      | 200000 |
-- | Willis     | Roberts     | 200000 |
-- | Shawn      | Wooten      | 200500 |
-- | Jose       | Ortiz       | 201000 |
-- | Pedro      | Feliz       | 201000 |
-- | Pablo      | Ozuna       | 202000 |
-- | Scott      | Winchester  | 202000 |
-- | Tim        | Drew        | 202000 |
-- +------------+-------------+--------+
