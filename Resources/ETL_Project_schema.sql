CREATE TABLE "Date" (
    "date_id"  SERIAL  NOT NULL,
    "year" INT   NOT NULL,
    "month" INT   NOT NULL,
    "quarter" INT   NOT NULL,
    "season" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Date" PRIMARY KEY (
        "date_id"
     )
);

CREATE TABLE "Demand_MillionKWH" (
    "date_id" INT   NOT NULL,
    "residential_demand" FLOAT   NOT NULL,
    "commercial_demand" FLOAT   NOT NULL,
    "industrial_demand" FLOAT   NOT NULL,
    CONSTRAINT "pk_Demand_MillionKWH" PRIMARY KEY (
        "date_id"
     )
);

CREATE TABLE "Price_CentsPerKWH" (
    "date_id" INT   NOT NULL,
    "residential_price" FLOAT   NOT NULL,
    "commercial_price" FLOAT   NOT NULL,
    "industrial_price" FLOAT   NOT NULL,
    CONSTRAINT "pk_Price_CentsPerKWH" PRIMARY KEY (
        "date_id"
     )
);

CREATE TABLE "Supply_ThousandMWH" (
    "date_id" INT   NOT NULL,
    "natural_gas" FLOAT   NOT NULL,
    "nuclear" FLOAT   NOT NULL,
    "hydroelectric" FLOAT   NOT NULL,
    "wind" FLOAT   NOT NULL,
    "solar" FLOAT   NOT NULL,
    "wood" FLOAT   NOT NULL,
    "other_biomass" FLOAT   NOT NULL,
    "other" FLOAT   NOT NULL,
    CONSTRAINT "pk_Supply_ThousandMWH" PRIMARY KEY (
        "date_id"
     )
);

ALTER TABLE "Demand_MillionKWH" ADD CONSTRAINT "fk_Demand_MillionKWH_date_id" FOREIGN KEY("date_id")
REFERENCES "Date" ("date_id");

ALTER TABLE "Price_CentsPerKWH" ADD CONSTRAINT "fk_Price_CentsPerKWH_date_id" FOREIGN KEY("date_id")
REFERENCES "Date" ("date_id");

ALTER TABLE "Supply_ThousandMWH" ADD CONSTRAINT "fk_Supply_ThousandMWH_date_id" FOREIGN KEY("date_id")
REFERENCES "Date" ("date_id");

