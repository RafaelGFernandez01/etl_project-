etl_hw 

CREATE TABLE "Datafiniti_Pizza" (
    "id" int   NOT NULL,
    "dateUpdated" date   NOT NULL,
    "address" VARCHAR   NOT NULL,
    "categories" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "menus.description" VARCHAR   NOT NULL,
    "menus.name" VARCHAR   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "postalCode" int   NOT NULL,
    "priceRange_min" money   NOT NULL,
    "priceRange_max" money   NOT NULL,
    CONSTRAINT "pk_Datafiniti_Pizza" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Pizza_Dataset" (
    "id" int   NOT NULL,
    "Keys" int   NOT NULL,
    "latitude" int   NOT NULL,
    "longitude" int   NOT NULL
);

ALTER TABLE "Pizza_Dataset" ADD CONSTRAINT "fk_Pizza_Dataset_id" FOREIGN KEY("id")
REFERENCES "Datafiniti_Pizza" ("id");

