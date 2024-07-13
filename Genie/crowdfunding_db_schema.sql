-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [category_df] (
    [category_id] VARCHAR(50)  NOT NULL ,
    [category] VARCHAR(250)  NOT NULL ,
    CONSTRAINT [PK_category_df] PRIMARY KEY CLUSTERED (
        [category_id] ASC
    )
)

CREATE TABLE [subcategory_df] (
    [subcategory_id] VARCHAR(50)  NOT NULL ,
    [subcategory] VARCHAR(250)  NOT NULL ,
    CONSTRAINT [PK_subcategory_df] PRIMARY KEY CLUSTERED (
        [subcategory_id] ASC
    )
)

CREATE TABLE [campaign_df] (
    [cf_id] INTEGER  NOT NULL ,
    [contact_id] INTEGER  NOT NULL ,
    [company-name] VARCHAR(250)  NOT NULL ,
    [description] VARCHAR(250)  NOT NULL ,
    [goal] FLOAT8  NOT NULL ,
    [pledged] FLOAT8  NOT NULL ,
    [outcome] VARCHAR(250)  NOT NULL ,
    [backers_count] INTEGER  NOT NULL ,
    [country] VARCHAR(250)  NOT NULL ,
    [currency] VARCHAR(10)  NOT NULL ,
    [launched_date] TIMESTAMP  NOT NULL ,
    [end_date] TIMESTAMP  NOT NULL ,
    [category_id] INTEGER  NOT NULL ,
    [subcategory_id] INTEGER  NOT NULL ,
    CONSTRAINT [PK_campaign_df] PRIMARY KEY CLUSTERED (
        [cf_id] ASC
    )
)

CREATE TABLE [contacts_df] (
    [contact_id] INTEGER  NOT NULL ,
    [first_name] VARCHAR(250)  NOT NULL ,
    [last_name] VARCHAR(250)  NOT NULL ,
    [email] VARCHAR(250)  NOT NULL ,
    CONSTRAINT [PK_contacts_df] PRIMARY KEY CLUSTERED (
        [contact_id] ASC
    )
)

ALTER TABLE [campaign_df] WITH CHECK ADD CONSTRAINT [FK_campaign_df_contact_id] FOREIGN KEY([contact_id])
REFERENCES [contacts_df] ([contact_id])

ALTER TABLE [campaign_df] CHECK CONSTRAINT [FK_campaign_df_contact_id]

ALTER TABLE [campaign_df] WITH CHECK ADD CONSTRAINT [FK_campaign_df_category_id] FOREIGN KEY([category_id])
REFERENCES [category_df] ([category_id])

ALTER TABLE [campaign_df] CHECK CONSTRAINT [FK_campaign_df_category_id]

ALTER TABLE [campaign_df] WITH CHECK ADD CONSTRAINT [FK_campaign_df_subcategory_id] FOREIGN KEY([subcategory_id])
REFERENCES [subcategory_df] ([subcategory_id])

ALTER TABLE [campaign_df] CHECK CONSTRAINT [FK_campaign_df_subcategory_id]

COMMIT TRANSACTION QUICKDBD