--In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it

-- CREATE TABLE STATMENTS

-- Represents martial arts taught at the dojo
CREATE TABLE IF NOT EXISTS "martial_arts" (
    "id" INT,
    "name" TEXT,
    PRIMARY KEY ("id"),

    );

-- Represents guardians of the students
CREATE TABLE IF NOT EXISTS "guardian" (
    "id" INT,
    "name" TEXT,
    "phone" INT,
    "email" TEXT,
    "address" TEXT,
    "relationship" TEXT,
    PRIMARY KEY ("id")

    );

-- Represents all transactions taking place
CREATE TABLE IF NOT EXISTS "transactions" (
    "id" INT,
    "date" TEXT,
    "amount" INT,
    "payment_method" TEXT,
    "guardian_id" INT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("guardian_id") REFERENCES "guardian"("id")

    );

-- Represents all student info
CREATE TABLE IF NOT EXISTS "students" (
    "id" INT,
    "name" TEXT,
    "dob" TEXT,
    "guardian_id" INT,
    "join_date" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("guardian_id") REFERENCES "guardian"("id")

    );

-- Represents class attendance
CREATE TABLE IF NOT EXISTS "register" (
    "id" INT,
    "student_id" INT,
    "class_id" INT,
    "attendance_date" TEXT,
    "attendance_status" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("class_id") REFERENCES "classes"("id"),
    FOREIGN KEY ("student_id") REFERENCES "students"("id")

    );

-- Represents all classes info
CREATE TABLE IF NOT EXISTS "classes" (
    "id" INT,
    "martial_arts_id" INT,
    "day" TEXT,
    "time" TEXT,
    "instructor" TEXT,
    "price(£)" INT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("martial_arts_id") REFERENCES "martial_arts"("id")

    );



-- CREATE VIEW STATMENTS

-- Represents class timetable
CREATE VIEW "class_timetable_info" AS
SELECT M."name", C."day", C."time", C."instructor" , C."price(£)" FROM "classes" AS C
INNER JOIN "martial_arts" AS M
ON M."id" = C."martial_arts_id";

-- Represents student and guardian contact info
CREATE VIEW "contact_info" AS
SELECT
 S."name" AS "student_name",
 G."name" AS "guardian_name",
 G."phone" AS "guardian_phone",
 G."email" AS "guardian_email",
 G."address" AS "guardian_address"
FROM "students" AS S
INNER JOIN "guardian" AS G
ON S."guardian_id" = G."id";

-- Represents student and the martial arts info
CREATE VIEW "students_martial_arts_info" AS
SELECT S."name", M."name" AS "martial_arts" FROM students AS S
INNER JOIN  "register" AS R ON S."id" = R."student_id"
INNER JOIN "classes" AS C ON C."id" = R."class_id"
INNER JOIN "martial_arts" AS M ON M."id" = C."martial_arts_id";

-- INSERT STATEMENTS

-- Inserting Data into martial_arts Table
INSERT INTO "martial_arts" ("id", "name") VALUES
(1, 'Karate'),
(2, 'Taekwondo'),
(3, 'Judo'),
(4, 'Brazilian Jiu-Jitsu'),
(5, 'Kung Fu');

-- Inserting Data into guardian Table
INSERT INTO "guardian" ("id", "name", "phone", "email", "address", "relationship") VALUES
(1, 'John Doe', 1234567890, 'john.doe@gmail.com', '123 Elm Street, Cityville', 'Father'),
(2, 'Jane Smith', 9876543210, 'jane.smith@yahoo.com', '456 Oak Avenue, Townsville', 'Mother'),
(3, 'Michael Johnson', 5556781234, 'michael.johnson@hotmail.com', '789 Pine Road, Villagetown', 'Uncle'),
(4, 'Emily Davis', 6667891234, 'emily.davis@outlook.com', '321 Cedar Blvd, Suburbia', 'Aunt'),
(5, 'Laura Green', 7771234567, 'laura.green@gmail.com', '654 Maple Street, Cityville', 'Mother'),
(6, 'Peter Parker', 8887654321, 'peter.parker@webmail.com', '987 Birch Avenue, Townsville', 'Father'),
(7, 'Sarah Connor', 4441237890, 'sarah.connor@yahoo.com', '159 Willow Road, Villagetown', 'Guardian'),
(8, 'Bruce Wayne', 5559876543, 'bruce.wayne@wayne.com', '789 Gotham Ave, Gotham', 'Uncle'),
(9, 'Clark Kent', 3334567890, 'clark.kent@dailyplanet.com', '321 Metropolis Street, Metropolis', 'Father'),
(10, 'Diana Prince', 9991239876, 'diana.prince@amazon.com', '456 Paradise Island Blvd, Paradise', 'Mother');

-- Inserting Data into students Table
INSERT INTO "students" ("id", "name", "dob", "guardian_id", "join_date") VALUES
(1, 'Alice Doe', '2012-04-15', 1, '2022-01-10'),
(2, 'Bob Smith', '2011-09-30', 2, '2021-11-20'),
(3, 'Charlie Johnson', '2013-12-01', 3, '2023-03-14'),
(4, 'Daisy Davis', '2010-06-21', 4, '2020-09-05'),
(5, 'Eve Green', '2014-07-22', 5, '2022-05-15'),
(6, 'Peter Parker Jr.', '2012-12-01', 6, '2021-08-11'),
(7, 'John Connor', '2013-10-30', 7, '2023-04-20'),
(8, 'Damian Wayne', '2011-05-14', 8, '2020-02-29'),
(9, 'Kara Kent', '2012-03-09', 9, '2022-12-10'),
(10, 'Donna Prince', '2011-08-18', 10, '2021-07-25'),
(11, 'Sam Doe', '2014-11-14', 1, '2023-01-22'),
(12, 'Ella Smith', '2010-03-05', 2, '2020-10-11');

-- Inserting Data into classes Table
INSERT INTO "classes" ("id", "martial_arts_id", "day", "time", "instructor", "price(£)") VALUES
(1, 1, 'Monday', '17:00', 'Sensei Nakamura', 20),
(2, 2, 'Wednesday', '18:30', 'Master Kim', 25),
(3, 3, 'Friday', '16:00', 'Coach Williams', 15),
(4, 4, 'Saturday', '14:00', 'Professor Santos', 30),
(5, 5, 'Tuesday', '19:00', 'Sifu Lee', 20);

-- Inserting Data into transactions Table
INSERT INTO "transactions" ("id", "date", "amount", "payment_method", "guardian_id") VALUES
(1, '2023-01-15', 100, 'Credit Card', 1),
(2, '2023-02-10', 80, 'Cash', 2),
(3, '2023-03-05', 90, 'Bank Transfer', 3),
(4, '2023-04-20', 120, 'Credit Card', 4),
(5, '2023-05-10', 110, 'Cash', 5),
(6, '2023-06-12', 95, 'Credit Card', 6),
(7, '2023-07-15', 105, 'Bank Transfer', 7),
(8, '2023-08-20', 120, 'Credit Card', 8),
(9, '2023-09-25', 100, 'Cash', 9),
(10, '2023-10-05', 85, 'Bank Transfer', 10),
(11, '2023-09-30', 115, 'Credit Card', 1),
(12, '2023-08-18', 90, 'Cash', 2);

-- Inserting Data into register Table
INSERT INTO "register" ("id", "student_id", "class_id", "attendance_date", "attendance_status") VALUES
(1, 1, 1, '2023-10-01', 'Present'),
(2, 2, 2, '2023-10-02', 'Absent'),
(3, 3, 3, '2023-10-03', 'Present'),
(4, 4, 4, '2023-10-04', 'Present'),
(5, 1, 5, '2023-10-05', 'Present'),
(6, 5, 1, '2023-10-06', 'Present'),
(7, 6, 2, '2023-10-06', 'Absent'),
(8, 7, 3, '2023-10-07', 'Present'),
(9, 8, 4, '2023-10-07', 'Present'),
(10, 9, 5, '2023-10-08', 'Absent'),
(11, 10, 1, '2023-10-08', 'Present'),
(12, 11, 2, '2023-10-09', 'Present'),
(13, 12, 3, '2023-10-09', 'Absent'),
(14, 5, 4, '2023-10-10', 'Present'),
(15, 6, 5, '2023-10-10', 'Absent'),
(16, 7, 1, '2023-10-11', 'Present'),
(17, 8, 2, '2023-10-11', 'Present'),
(18, 9, 3, '2023-10-12', 'Present'),
(19, 10, 4, '2023-10-12', 'Absent'),
(20, 11, 5, '2023-10-13', 'Present'),
(21, 12, 1, '2023-10-13', 'Absent');



