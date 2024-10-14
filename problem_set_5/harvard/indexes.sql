-- In indexes.sql, write a set of SQL statements that create indexes which will speed up typical queries on the harvard.db database.
-- The number of indexes you create, as well as the columns they include, is entirely up to you. Be sure to balance speed with disk space, only creating indexes you need.

-- When engineers optimize a database, they often care about the typical queries run on the database.
-- Such queries highlight patterns with which a database is accessed, thus revealing the best columns and tables on which to create indexes.
-- Click the spoiler tag below to see the set of typical SELECT queries run on harvard.db.


CREATE INDEX "enrollments_student_id"
ON "enrollments" ("student_id");


CREATE INDEX "enrollments_course_id"
ON "enrollments" ("course_id");


CREATE INDEX "courses_department"
ON "courses" ("department");


CREATE INDEX "courses_semester"
ON "courses" ("semester");



-- .schema
-- CREATE TABLE IF NOT EXISTS "students" (
--     "id" INTEGER,
--     "name" TEXT NOT NULL,
--     PRIMARY KEY("id")
-- );
-- CREATE TABLE IF NOT EXISTS "enrollments" (
--     "id" INTEGER,
--     "student_id" INTEGER,
--     "course_id" INTEGER,
--     PRIMARY KEY("id"),
--     FOREIGN KEY("student_id") REFERENCES "students"("id"),
--     FOREIGN KEY("course_id") REFERENCES "courses"("id")
-- );
-- CREATE TABLE IF NOT EXISTS "courses" (
--     "id" INTEGER,
--     "department" TEXT NOT NULL,
--     "number" INTEGER NOT NULL,
--     "semester" TEXT NOT NULL,
--     "title" TEXT NOT NULL,
--     PRIMARY KEY("id")
-- );
-- CREATE TABLE IF NOT EXISTS "satisfies" (
--     "id" INTEGER,
--     "course_id" INTEGER,
--     "requirement_id" INTEGER,
--     PRIMARY KEY("id"),
--     FOREIGN KEY("course_id") REFERENCES "courses"("id"),
--     FOREIGN KEY("requirement_id") REFERENCES "requirements"("id")
-- );
-- CREATE TABLE IF NOT EXISTS "requirements" (
--     "id" INTEGER,
--     "name" TEXT NOT NULL,
--     PRIMARY KEY("id")
-- );
-- CREATE INDEX "enrollments_student_id"
-- ON "enrollments" ("student_id");
-- CREATE INDEX "enrollments_course_id"
-- ON "enrollments" ("course_id");
-- CREATE INDEX "courses_department"
-- ON "courses" ("department");
-- CREATE INDEX "courses_semester"
-- ON "courses" ("semester");
