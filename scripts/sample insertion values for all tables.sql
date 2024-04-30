INSERT INTO Books (Book_ID, Title, Average_Rating, ISBN, Language_Code, Num_Pages, Ratings_Count, Publication_Date, Publisher, Genre, Book_Count) VALUES
(1, 'The Great Gatsby', 3.91, '9780743273565', 'EN', 180, 125, '1925-04-10', 'Charles Scribner''s Sons', 'Classic', 5),
(2, 'To Kill a Mockingbird', 4.27, '9780061120084', 'EN', 324, 150, '1960-07-11', 'J.B. Lippincott & Co.', 'Historical Fiction', 4),
(3, '1984', 4.17, '9780451524935', 'EN', 328, 90, '1949-06-08', 'Secker & Warburg', 'Dystopian', 6),
(4, 'Pride and Prejudice', 4.25, '9780679783268', 'EN', 279, 110, '1813-01-28', 'T. Egerton', 'Classic Romance', 7),
(5, 'The Hobbit', 4.26, '9780618260300', 'EN', 310, 200, '1937-09-21', 'George Allen & Unwin', 'Fantasy', 3),
(6, 'Harry Potter and the Sorcerer''s Stone', 4.46, '9780590353427', 'EN', 309, 180, '1997-06-26', 'Bloomsbury', 'Fantasy', 9),
(7, 'The Catcher in the Rye', 3.80, '9780316769488', 'EN', 234, 139, '1951-07-16', 'Little, Brown and Company', 'Literary Fiction', 2),
(8, 'The Diary of Anne Frank', 4.12, '9780553296983', 'NL', 283, 70, '1947-06-25', 'Contact Publishing', 'Biography', 5),
(9, 'Animal Farm', 3.90, '9780451526342', 'EN', 112, 80, '1945-08-17', 'Secker & Warburg', 'Political Satire', 8),
(10, 'Jane Eyre', 4.11, '9780142437209', 'EN', 500, 65, '1847-10-16', 'Smith, Elder & Co.', 'Gothic Fiction', 4);

select * from books 

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

select * from Users

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

 select * from supplier
 
 INSERT INTO Admin (Admin_ID, Name, Email, Password, Created_At) VALUES
(1, 'Alex Johnson', 'alex.johnson@example.com', 'alex11', '2022-01-01'),
(2, 'Jamie Smith', 'jamie.smith@example.com', 'jamie123', '2022-02-01'),
(3, 'Taylor Brown', 'taylor.brown@example.com', 'taylor333', '2022-03-01');

select * from admin

INSERT INTO Author (ID, Author_name) VALUES
(1, 'William Shakespeare'),
(2, 'Jane Austen'),
(3, 'Mark Twain'),
(4, 'Charles Dickens'),
(5, 'Virginia Woolf'),
(6, 'J.K. Rowling'),
(7, 'Ernest Hemingway'),
(8, 'George Orwell'),
(9, 'Agatha Christie'),
(10, 'J.R.R. Tolkien');

select * from author

INSERT INTO Book_Author (Book_ID, Author_ID) VALUES
(1, 8),  
(2, 2),  
(3, 8),  
(4, 2),  
(5, 10), 
(6, 6),  
(7, 7),  
(9, 8),  
(10, 10); 

select * from Book_author

INSERT INTO Location (Book_ID, Aisle_Char, Rack, Count_Left) VALUES
(1, 'A', 1, 3),
(2, 'A', 2, 4),
(3, 'B', 1, 6),
(4, 'B', 2, 7),
(5, 'C', 1, 3),
(6, 'C', 2, 9),
(7, 'D', 1, 2),
(8, 'D', 2, 5),
(9, 'E', 1, 8),
(10, 'E', 2, 4);
 select * from location
 
 INSERT INTO Transaction (Transaction_ID, User_ID, Book_ID, Borrow_Date, Return_Due_Date, Returned_Date) VALUES
(1, 1, 1, '2023-01-01', '2023-01-15', '2023-01-14'),
(2, 2, 2, '2023-01-02', '2023-01-16', NULL),
(3, 3, 3, '2023-01-03', '2023-01-17', '2023-01-16'),
(4, 4, 4, '2023-01-04', '2023-01-18', NULL),
(5, 5, 5, '2023-01-05', '2023-01-19', '2023-01-18'),
(6, 1, 6, '2023-01-06', '2023-01-20', NULL),
(7, 2, 7, '2023-01-07', '2023-01-21', '2023-01-20'),
(8, 3, 8, '2023-01-08', '2023-01-22', NULL),
(9, 4, 9, '2023-01-09', '2023-01-23', '2023-01-22'),
(10, 5, 10, '2023-01-10', '2023-01-24', NULL);

INSERT INTO Supplies (Supplier_ID, Book_ID) VALUES
(1, 1),
(1, 2),
(3, 3),
(4, 4),
(4, 5),
(6, 6),
(1, 7),
(8, 8),
(1, 9),
(3, 10);

INSERT INTO Review (Review_ID, User_ID, Book_ID, Review_Text, Review_Date) VALUES
(1, 1, 1, 'A timeless classic!', '2023-01-05'),
(2, 2, 2, 'Very compelling read.', '2023-01-06'),
(3, 3, 1, 'Thought-provoking and deep.', '2023-01-07'),
(4, 4, 4, 'A bit slow in the middle but great ending.', '2023-01-08'),
(5, 5, 5, 'My favorite book!', '2023-01-09'),
(6, 1, 6, 'Excellent for children and adults alike.', '2023-01-10'),
(7, 2, 7, 'Not what I expected, but still good.', '2023-01-11'),
(8, 3, 8, 'Very detailed and well-researched.', '2023-01-12'),
(9, 4, 9, 'Captivating from start to finish.', '2023-01-13'),
(10, 5, 10, 'I couldn’t put it down!', '2023-01-14');

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
(1, 10, 3),
(2, 9, 2),
(3, 8, 4),
(4, 7, 1),
(5, 6, 5),
(6, 5, 2),
(7, 4, 6),
(8, 3, 2),
(9, 2, 3),
(10, 1, 4);





 