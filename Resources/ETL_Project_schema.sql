-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/v57lsY
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Date" (
    "date_id"  SERIAL  NOT NULL,
    "year" INT(4)   NOT NULL,
    "month" INT(2)   NOT NULL,
    "quarter" INT(1)   NOT NULL,
    "season" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Date" PRIMARY KEY (
        "date_id"
     )
);

CREATE TABLE "Demand" (
    "date_id" INT   NOT NULL,
    "residential_demand" FLOAT   NOT NULL,
    "commercial_demand" FLOAT   NOT NULL,
    "industrial_demand" FLOAT   NOT NULL,
    CONSTRAINT "pk_Demand" PRIMARY KEY (
        "date_id"
     )
);

CREATE TABLE "Price" (
    "date_id" INT   NOT NULL,
    "residential_price" FLOAT   NOT NULL,
    "commercial_price" FLOAT   NOT NULL,
    "industrial_price" FLOAT   NOT NULL,
    CONSTRAINT "pk_Price" PRIMARY KEY (
        "date_id"
     )
);

CREATE TABLE "Supply" (
    "date_id" INT   NOT NULL,
    "natural_gas" FLOAT   NOT NULL,
    "nuclear" FLOAT   NOT NULL,
    "hydroelectric" FLOAT   NOT NULL,
    "wind" FLOAT   NOT NULL,
    "solar" FLOAT   NOT NULL,
    "wood" FLOAT   NOT NULL,
    "other_biomass" FLOAT   NOT NULL,
    "other" FLOAT   NOT NULL,
    CONSTRAINT "pk_Supply" PRIMARY KEY (
        "date_id"
     )
);

ALTER TABLE "Demand" ADD CONSTRAINT "fk_Demand_date_id" FOREIGN KEY("date_id")
REFERENCES "Date" ("date_id");

ALTER TABLE "Price" ADD CONSTRAINT "fk_Price_date_id" FOREIGN KEY("date_id")
REFERENCES "Date" ("date_id");

ALTER TABLE "Supply" ADD CONSTRAINT "fk_Supply_date_id" FOREIGN KEY("date_id")
REFERENCES "Date" ("date_id");

