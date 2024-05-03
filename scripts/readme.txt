The books table in the database is referred from the books_dataset from Kaggle. 
Dataset


* The load.sql file has the insert queries for all the tables except books, author, and book_author tables. 
* For books, author and book_author tables, it has code to load data from css instead of insert queries.
* Please replace the path for the CSV files in that code with the absolute path of location where you have your CSV files saved.
* To load data into fines table, load the trigger and then if the transaction table gets updated, automatically the fines table will update with the fines.
* We also have the database backup in the submission attached as backup.sql file with password of your database server.
