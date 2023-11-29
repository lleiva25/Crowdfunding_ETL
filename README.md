 # Crowdfunding ETL Project
 
 -------------------------------------------------------------------------------------------
 Contributor
 -------------------------------------------------------------------------------------------
- Leslie Leiva (@lleiva25)

 -------------------------------------------------------------------------------------------
 Background
 -------------------------------------------------------------------------------------------
 For the ETL mini project, you will work with a partner to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After you transform the data, you'll create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, you’ll upload the CSV file data into a Postgres database.

Since this is a one-week project, make sure that you have done at least half of your project before the third day of class to stay on track.

Although you and your partner will divide the work, it’s essential to collaborate and communicate while working on different parts of the project. Be sure to check in with your partner regularly and offer support.

 -------------------------------------------------------------------------------------------
 Project Goals
 -------------------------------------------------------------------------------------------
- Create the Category and Subcategory DataFrames
- Create the Campaign DataFrame
- Create the Contacts DataFrame
- Create the Crowdfunding Database

 -------------------------------------------------------------------------------------------
 Project Files
 -------------------------------------------------------------------------------------------
 - ReadMe
 - ETL_Mini_Project_Completed_Code
 - ERD Table
 - Crowdfunding_db_schema
 - campaign.csv
 - campaign_contact_info_dataset.csv
 - category.csv
 - contacts.csv
 - contacts.xlsx
 - crowdfunding.xlsx
 - subcategory.csv


 -------------------------------------------------------------------------------------------
ERD Relationship Table
 -------------------------------------------------------------------------------------------
 ![Crowdfunding_ERD](https://github.com/lleiva25/Crowdfunding_ETL/assets/140974405/fb0c02f3-64f0-4b83-aca9-b1aafee0037b)
 
 
 -------------------------------------------------------------------------------------------
 Instructions
 -------------------------------------------------------------------------------------------
 Create the Category and Subcategory DataFrames
 1. Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
     - A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
     - A "category" column that contains only the category titles
       
![image](https://github.com/lleiva25/Crowdfunding_ETL/assets/140974405/5ab469bc-5737-46d2-8a3a-d44159ad50ae)

2. Export the category DataFrame as category.csv and save it to your GitHub repository.

3. Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
      - A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
      - A "subcategory" column that contains only the subcategory titles
        
![image](https://github.com/lleiva25/Crowdfunding_ETL/assets/140974405/a1301ead-b5e8-4744-ad64-5a87e50b0725)

4. Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.


Create the Campaign DataFrame
1. Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
      - The "cf_id" column
      - The "contact_id" column
      - The "company_name" column
      - The "blurb" column, renamed to "description"
      - The "goal" column, converted to the float data type
      - The "pledged" column, converted to the float data type
      - The "outcome" column
      - The "backers_count" column
      - The "country" column
      - The "currency" column
      - The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
      - The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
      - The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
      - The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
        
  ![image](https://github.com/lleiva25/Crowdfunding_ETL/assets/140974405/473fb8c1-0092-42d5-9dd1-badc4d7e58c7)

2. Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

Create the Contacts DataFrame
1. Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
      - Option 1: Use Python dictionary methods.[Method Utilized]
      - Option 2: Use regular expressions. [Additional Practice]

2. If you chose Option 1, complete the following steps:
      - Import the contacts.xlsx file into a DataFrame.
      - Iterate through the DataFrame, converting each row to a dictionary.
      - Iterate through each dictionary, doing the following:
      - Extract the dictionary values from the keys by using a Python list comprehension.
      - Add the values for each row to a new list.
      - Create a new DataFrame that contains the extracted data.
      - Split each "name" column value into a first and last name, and place each in a new column.
      - Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

3. If you chose Option 2, complete the following steps:
      - Import the contacts.xlsx file into a DataFrame.
      - Extract the "contact_id", "name", and "email" columns by using regular expressions.
      - Create a new DataFrame with the extracted data.
      - Convert the "contact_id" column to the integer type.
      - Split each "name" column value into a first and a last name, and place each in a new column.
      - Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.
        
  ![image](https://github.com/lleiva25/Crowdfunding_ETL/assets/140974405/c955436c-c684-457b-bcaa-d8d4b66f5315)

Create the Crowdfunding Database
1. Inspect the four CSV files, and then sketch an ERD of the tables

2. Use the information from the ERD to create a table schema for each CSV file.
      - Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.
        
3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
   
4. Create a new Postgres database, named crowdfunding_db.
   
5. Using the database schema, create the tables in the correct order to handle the foreign keys.
   
7. Verify the table creation by running a SELECT statement for each table. See code below:

![image](https://github.com/lleiva25/Crowdfunding_ETL/assets/140974405/d9e4d393-7f0c-4c47-877c-d2eb13634825)

 
9. Import each CSV file into its corresponding SQL table.
   
10. Verify that each table has the correct data by running a SELECT statement for each.
 -------------------------------------------------------------------------------------------

 -------------------------------------------------------------------------------------------

 
