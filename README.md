# About the Project
This project is an example of an ETL (Extract, Transform, Load) pipeline constructed in Python using PostgreSQL as our database.  

It consists of three modules:
1. Data Transformation.
2. Data Loading.
3. Data Analysis.

### Data Transformation

We were given two documents to begin the project with: an excel file containing Kickstarter campaign information, and an excel file containing contact information for the Kickstarter campaign managers.  

For this module, we needed to extract the relevant information from the files and export them in the desired organization as a CSV file.  


For the crowdfunding.xlsx file, we made three separate CSV files:  
1. Campaign - the cf_id, contact_id, company_name, description, goal, pledged, backers_count, country, currency, launch_date, end_date, category_id, subcategory_id for each campaign.
- A few transformations were made to this data.
- Data type conversions for goal, pleged, launch_date, end_date.
- Renaming of some columns.
- Mapping category and subcategory names to their respective id numbers.

2. Categories - a mapping of category names to category ids.  
3. Subcategories - a mapping of subcategory names to subcategory ids.

For the contacts.xlsx file, we made one CSV file:
1. Contacts - the contact_id, name, and email for the campaign managers.
   - The data in this file was presented as a series of JSON strings.
   - As such, we needed to transform the data via string splitting and replacing in order to extract the data in the correct format.
  
### Data Loading

For this module, we had two tasks:
1. Create a database for our information.

We used quickdatabasediagrams.com to construct an entity relationship diagram for the four tables in our database.  
These tables mirror the CSV files that we created in the transformation module.  
We took the schema output from quickdatabasediagrams.com and used it to set-up our database.
   
2. Load the information into the database.

To load the information into the database, we used the Python library 'sqlalchemy' and imported the CSV files into the database.  

### Data Analysis

In the last module, we made four visualizations using the data to gain a better understanding of what makes a successful Kickstarter campaign.
1. A treemap of successful/failed campaigns mapped over their category and subcategory.
2. A histogram of successful/failed campaigns separated by their intial goal amount.
3. Two scatterplots of the duration of a campaign plotted against its percent funded.
   - One of these scatterplots shows the entire dataset, and one targets a percent funded range of 0% to 250%.


# Built In
Python.  
Jupyter Notebook.  
PostgreSQL.  


# Resources

quickdatabasediagrams.com 
- ERD, SQL Schema
