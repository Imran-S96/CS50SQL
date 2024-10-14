-- ATL Schema

CREATE TABLE IF NOT EXISTS "passangers" (
    "id" INT,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INT,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "airlines" (
    "id" INT,
    "name" TEXT,
    "concourse" TEXT,
    PRIMARY KEY ("id")
);


CREATE TABLE IF NOT EXISTS "flights" (
    "id" INT,
    "flight_number" INT,
    "airline_id" INT,
    "departing_code" TEXT,
    "destination_code" TEXT,
    "expec_departure_time" TEXT,
    "expec_arrival_time" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("airline_id") REFERENCES "airlines"("id")
);


CREATE TABLE IF NOT EXISTS "check-ins" (
    "id" INT,
    "date_time" TEXT,
    "flight_id" INT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("flight_id") REFERENCES "flights"("id")

);
