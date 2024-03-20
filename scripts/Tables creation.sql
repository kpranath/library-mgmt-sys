CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Authors VARCHAR(255),
    Average_Rating FLOAT,
    ISBN13 VARCHAR(20),
    Language_Code VARCHAR(10),
    Number_of_Pages INT,
    Ratings_Count INT,
    Publication_Date DATE,
    Publisher VARCHAR(255),
    Genre VARCHAR(100),
    Book_Count INT
);
CREATE TABLE Users (
    User_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Password VARCHAR(255),
    Created_At DATE
);
CREATE TABLE Author (
    ID INT,
    Author_name VARCHAR(255),
    Book_ID INT,
    PRIMARY KEY (ID, Author_name),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
CREATE TABLE Location (
    Book_id INT,
    Aisle CHAR(1),
    Rack INT,
    Count_Left INT,
    FOREIGN KEY (Book_id) REFERENCES Books(Book_ID)
);
CREATE TABLE Transaction (
    Transaction_ID INT PRIMARY KEY,
    User_ID INT,
    Book_ID INT,
    Borrowed_Date DATE,
    Return_Due_Date DATE,
    Returned_Date DATE,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
