-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "category_df" (
    "category_id" VARCHAR(50)   NOT NULL,
    "category" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_category_df" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory_df" (
    "subcategory_id" VARCHAR(50)   NOT NULL,
    "subcategory" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_subcategory_df" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "campaign_df" (
    "cf_id" INTEGER   NOT NULL,
    "contact_id" INTEGER   NOT NULL,
    "company-name" VARCHAR(250)   NOT NULL,
    "description" VARCHAR(250)   NOT NULL,
    "goal" FLOAT8   NOT NULL,
    "pledged" FLOAT8   NOT NULL,
    "outcome" VARCHAR(250)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(250)   NOT NULL,
    "currency" VARCHAR(10)   NOT NULL,
    "launched_date" TIMESTAMP   NOT NULL,
    "end_date" TIMESTAMP   NOT NULL,
    "category_id" INTEGER   NOT NULL,
    "subcategory_id" INTEGER   NOT NULL,
    CONSTRAINT "pk_campaign_df" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts_df" (
    "contact_id" INTEGER   NOT NULL,
    "first_name" VARCHAR(250)   NOT NULL,
    "last_name" VARCHAR(250)   NOT NULL,
    "email" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_contacts_df" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign_df" ADD CONSTRAINT "fk_campaign_df_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts_df" ("contact_id");

ALTER TABLE "campaign_df" ADD CONSTRAINT "fk_campaign_df_category_id" FOREIGN KEY("category_id")
REFERENCES "category_df" ("category_id");

ALTER TABLE "campaign_df" ADD CONSTRAINT "fk_campaign_df_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory_df" ("subcategory_id");

