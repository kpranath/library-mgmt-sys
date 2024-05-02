CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(100),
    Average_Rating FLOAT,
    Language_Code VARCHAR(100),
    Num_Pages INT,
    Ratings_Count INT,
    Publisher VARCHAR(255),
    Genre VARCHAR(255),
    Book_Count INT
);
CREATE TABLE Users (
    User_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Password VARCHAR(255),
    Created_At DATE
);
CREATE TABLE Admin (
    Admin_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Password VARCHAR(255),
    Created_At DATE
);
CREATE TABLE Supplier (
    Supplier_ID INT PRIMARY KEY,
    Supplier_Name VARCHAR(255),
    Contact_Number INT,
    Address VARCHAR(255),
    Email VARCHAR(255)
);
CREATE TABLE Author (
    ID INT PRIMARY KEY,
    Author_name VARCHAR(255)
);

CREATE TABLE Book_Author (
    Book_ID INT,
    Author_ID INT,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
    FOREIGN KEY (Author_ID) REFERENCES Author(ID)
);
CREATE TABLE Location (
    Book_ID INT,
    Aisle_Char CHAR(1),
    Rack INT,
    Count_Left INT,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
CREATE TABLE Transaction (
    Transaction_ID INT PRIMARY KEY,
    User_ID INT,
    Book_ID INT,
    Borrow_Date DATE,
    Return_Due_Date DATE,
    Returned_Date DATE,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
CREATE TABLE Supplies (
    Supplier_ID INT,
    Book_ID INT,
	FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
CREATE TABLE Fines (
    User_ID INT,
    Fine_Paid FLOAT,
    Total_Fine FLOAT,
    Amount_Due FLOAT,
    PRIMARY KEY (User_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);
CREATE TABLE Review (
    Review_ID INT PRIMARY KEY,
    User_ID INT,
    Book_ID INT,
    Review_Text VARCHAR(255),
    Review_Date DATE,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
CREATE TABLE Order_table (
    Order_ID INT PRIMARY KEY,
    Supplier_ID INT,
    Cost FLOAT,
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);

CREATE TABLE Books_Ordered (
    Order_ID INT,
    Book_ID INT,
	Quantity INT,
    FOREIGN KEY (Order_ID) REFERENCES Order_table(Order_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);

