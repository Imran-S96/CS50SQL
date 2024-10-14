-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

-- 1. Find a students, gaurdian and the guardians contact information, in case of an emergency

SELECT * FROM "contact_info";

-- 2. Query students and the martial arts they do

SELECT * FROM "students_martial_arts_info";

-- 3. Query a table with classes and the martial arts they do

SELECT * FROM "class_timetable_info";

-- 4. Which instructor run which classes for the Dojo

SELECT "instructor", "name" AS "martial_art", "day", "time" FROM "class_timetable_info";

-- 5. Since the opening of the Dojo, how much money has each martial art made from classes

SELECT M."name", SUM(C."price(£)") AS "total_price" FROM "classes" AS C
LEFT JOIN "martial_arts" AS M
ON M."id" = C."martial_arts_id"
LEFT JOIN "register" AS R
ON R."class_id" = C."id"
GROUP BY M."name";

-- 6.Which student(s) have been absent from class

SELECT S."name", COUNT("attendance_status") AS "Absences" FROM "register" AS R
LEFT JOIN "students" AS S
ON R."student_id" = S."id"
WHERE "attendance_status" = 'Absent'
GROUP BY S."name";

-- 7. What is a guardians preferred method of payment and how many guardians used them

SELECT "payment_method" , COUNT("payment_method") AS "times_payment_method_used" FROM "transactions"
GROUP BY "payment_method"
ORDER BY "times_payment_method_used" DESC
LIMIT 1;

-- 8. Query the total number of student doing each martial art

SELECT "martial_arts", COUNT("name") AS "total_students" FROM "students_martial_arts_info"
GROUP BY "martial_arts"
ORDER BY "total_students" DESC;
