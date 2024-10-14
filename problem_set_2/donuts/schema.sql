-- Donuts Schema

CREATE TABLE "ingredients" (
    "id" INT,
    "name" TEXT ,
    "units" TEXT,
    "price_per_unit" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts" (
    "id" INT,
    "name" TEXT,
    "gluten_free" INT,
    "price" TEXT,
    "ingredient_id" INT,
    PRIMARY KEY("id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "customers" (
    "id" INT,
    "first_name" TEXT,
    "last_name" TEXT,
    "order_id" INT,
    PRIMARY KEY("id"),
    FOREIGN KEY ("order_id") REFERENCES "orders"("id")

);

CREATE TABLE "orders" (
    "id" INT,
    "order_num" INT,
    "donut_id" INT,
    "customer_id" INT,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
);
