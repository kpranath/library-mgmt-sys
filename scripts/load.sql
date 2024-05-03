-------Add absolute path to Insert books data
COPY books FROM 'D:\Spring 2024\DMQL\library-mgmt-sys\scripts\books_table_data.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

-------Add absolute path to Insert author data
COPY author FROM 'D:\Spring 2024\DMQL\library-mgmt-sys\scripts\authors_data.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

--------Add absolute path to insert book_author data(Please provide the absolute path)
CREATE TEMP TABLE staging_book_author (
    book_id INT,
    author_id INT
);
COPY staging_book_author FROM 'D:\Spring 2024\DMQL\library-mgmt-sys\scripts\book_author_data.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

INSERT INTO book_author (book_id, author_id)
SELECT book_id, author_id FROM staging_book_author
WHERE EXISTS (
    SELECT 1 FROM books WHERE book_id = staging_book_author.book_id
) AND EXISTS (
    SELECT 1 FROM author WHERE author_id = staging_book_author.author_id
);

DELETE FROM staging_book_author;

-----------------------

INSERT INTO Users (User_ID, Name, Email, Password, Created_At) VALUES
(1, 'John Doe', 'johndoe@example.com', 'password123', '2023-01-15'),
(2, 'Jane Smith', 'janesmith@example.com', 'smithpassword', '2023-02-20'),
(3, 'Emily Johnson', 'emilyj@example.com', 'emilypassword', '2023-03-05'),
(4, 'Michael Brown', 'michaelb@example.com', 'brownpassword', '2023-04-10'),
(5, 'Jessica Davis', 'jessicad@example.com', 'davispassword', '2023-05-18'),
(6, 'Daniel Miller', 'danielm@example.com', 'millerpassword', '2023-06-24'),
(7, 'Laura Wilson', 'lauraw@example.com', 'wilsonpassword', '2023-07-30'),
(8, 'Ryan Moore', 'ryanm@example.com', 'moorepassword', '2023-08-15'),
(9, 'Chloe Taylor', 'chloet@example.com', 'taylorpassword', '2023-09-09'),
(10, 'Brandon Anderson', 'brandon@example.com', 'andersonpassword', '2023-10-23');


INSERT INTO Supplier (Supplier_ID, Supplier_Name, Contact_Number, Address, Email) VALUES
(1, 'Global Books Ltd.', 1234567890, '1234 Library Ave, Booktown, BK 12345', 'contact@globalbooks.com'),
(2, 'Paperback Providers', 1234567891, '5678 Novel St, Readville, RD 23456', 'info@paperbackproviders.com'),
(3, 'Wholesale Reads Inc.', 1234567892, '9012 Fiction Ln, Literatura, LT 34567', 'sales@wholesalereads.com'),
(4, 'First Editions Supply', 1234567893, '3456 Manuscript Rd, Authorcity, AC 45678', 'support@firsteditions.com'),
(5, 'Literary Logistics', 1234567894, '7890 Textbook Tr, Publisherland, PL 56789', 'service@literarylogistics.com'),
(6, 'Prose Providers Co.', 1234567895, '6789 Chapter Ct, Writerburgh, WB 67890', 'help@proseproviders.com'),
(7, 'Classic Collections', 1234567896, '4321 Tale Terrace, Storyville, SV 78901', 'inquiries@classiccollections.com'),
(8, 'Modern Manuscripts Ltd.', 1234567897, '8765 Fable Blvd, Newread, NR 89012', 'contact@modernmanuscripts.com'),
(9, 'Epic Editions', 1234567898, '2345 Saga Street, Epicville, EV 90123', 'orders@epiceditions.com'),
(10, 'Narrative Networks', 1234567899, '1357 Plot Pl, Tale Town, TT 01234', 'sales@narrativenetworks.com');


 
 INSERT INTO Admin (Admin_ID, Name, Email, Password, Created_At) VALUES
(1, 'Alex Johnson', 'alex.johnson@example.com', 'alex11', '2022-01-01'),
(2, 'Jamie Smith', 'jamie.smith@example.com', 'jamie123', '2022-02-01'),
(3, 'Taylor Brown', 'taylor.brown@example.com', 'taylor333', '2022-03-01');








INSERT INTO Location (Book_ID, Aisle_Char, Rack, Count_Left) VALUES
(38338, 'B', 7, 89),
(2, 'A', 2, 4),
(8, 'B', 1, 6),
(4, 'B', 2, 7),
(5, 'C', 1, 3),
(12, 'C', 2, 9),
(13, 'D', 1, 2),
(16, 'D', 2, 5),
(18, 'E', 1, 8),
(9, 'E', 2, 4);

 
 INSERT INTO Transaction (User_ID, Book_ID, Borrow_Date, Return_Due_Date, Returned_Date) VALUES
(3, 38338, '2023-01-01', '2023-01-15', '2023-03-21'),
(2, 38338, '2023-01-02', '2023-01-16', NULL),
(3, 8, '2023-01-03', '2023-01-17', '2023-01-16'),
(4, 4, '2023-01-04', '2023-01-18', NULL),
(5, 5, '2023-01-05', '2023-01-19', '2023-01-18'),
(1, 12, '2023-01-06', '2023-01-20', NULL),
(2, 13, '2023-01-07', '2023-01-21', '2023-01-20'),
(3, 16, '2023-01-08', '2023-01-22', NULL),
(4, 18, '2023-01-09', '2023-01-23', '2023-01-22'),
(5, 9, '2023-01-10', '2023-01-24', NULL);

INSERT INTO Supplies (Supplier_ID, Book_ID) VALUES
(1, 38338),
(1, 2),
(3, 8),
(4, 4),
(4, 5),
(6, 13),
(1, 12),
(8, 18),
(1, 9),
(3, 16);


INSERT INTO Review (Review_ID, User_ID, Book_ID, Review_Text, Review_Date) VALUES
(1, 1, 1, 'A timeless classic!', '2023-01-05'),
(2, 2, 2, 'Very compelling read.', '2023-01-06'),
(3, 3, 1, 'Thought-provoking and deep.', '2023-01-07'),
(4, 4, 4, 'A bit slow in the middle but great ending.', '2023-01-08'),
(5, 5, 5, 'My favorite book!', '2023-01-09'),
(6, 1, 12, 'Excellent for children and adults alike.', '2023-01-10'),
(7, 2, 16, 'Not what I expected, but still good.', '2023-01-11'),
(8, 3, 1, 'Very detailed and well-researched.', '2023-01-12'),
(9, 4, 2, 'Captivating from start to finish.', '2023-01-13'),
(10, 5, 4, 'I couldn’t put it down!', '2023-01-14');


INSERT INTO Order_table (Order_ID, Supplier_ID, Cost) VALUES
(1, 1, 500.00),
(2, 2, 1500.00),
(3, 3, 750.00),
(4, 4, 620.00),
(5, 5, 310.00),
(6, 6, 980.00),
(7, 7, 1230.00),
(8, 8, 500.00),
(9, 9, 440.00),
(10, 10, 860.00);


INSERT INTO Books_Ordered (Order_ID, Book_ID, Quantity) VALUES
(1, 1, 3),
(2, 2, 2),
(3, 4, 4),
(4, 5, 1),
(5, 12, 5),
(6, 18, 2),
(7, 4, 6),
(8, 9, 2),
(9, 1, 3),
(10, 1, 4);
