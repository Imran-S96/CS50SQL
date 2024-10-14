-- LinkedIn Connect Schema

CREATE TABLE "users" (
    "id" INT,
    "first_name" TEXT ,
    "last_name" TEXT ,
    "username" TEXT ,
    "password" TEXT ,
    PRIMARY KEY("id")
);

CREATE TABLE "schools" (
    "id" INT,
    "name" TEXT ,
    "type" TEXT,
    "location" TEXT,
    "year_founded" INT,
    PRIMARY KEY("id")
);

CREATE TABLE "companies" (
    "id" INT,
    "name" TEXT ,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "people_connections" (
    "id" INT,
    "user_id" INT,
    "following_id" INT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("following_id") REFERENCES "users"("id")
);

CREATE TABLE "school_connections" (
    "id" INT,
    "user_id" INT,
    "school_id" INT,
    "start_date" TEXT,
    "end_date" TEXT,
    "degree_type" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

CREATE TABLE "company_connections" (
    "id" INT,
    "user_id" INT,
    "company_id" INT,
    "start_date" TEXT,
    "end_date" TEXT,
    "title" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);
