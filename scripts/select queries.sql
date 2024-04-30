SELECT
    B.Book_ID,
    B.Title,
    A.Author_name,
    L.Aisle_Char,
    L.Rack,
    L.Count_Left
FROM
    Books B
JOIN
    Book_Author BA ON B.Book_ID = BA.Book_ID
JOIN
    Author A ON BA.Author_ID = A.ID
JOIN
    Location L ON B.Book_ID = L.Book_ID
WHERE
    B.Book_ID <= 10 and B.Book_ID>= 5;  
	
	-------------------------------------------
	
SELECT
    S.Supplier_Name,
    COUNT(DISTINCT O.Order_ID) AS Number_of_Orders,
    SUM(BO.Quantity) AS Total_Books_Ordered,
    SUM(O.Cost) AS Total_Cost
FROM
    Order_table O
JOIN
    Books_Ordered BO ON O.Order_ID = BO.Order_ID
JOIN
    Books B ON BO.Book_ID = B.Book_ID
JOIN
    Supplies SP ON B.Book_ID = SP.Book_ID
JOIN
    Supplier S ON SP.Supplier_ID = S.Supplier_ID
GROUP BY
    S.Supplier_Name
ORDER BY
    Total_Cost DESC;

--Retrieve the top 5 users with the highest total fines:
SELECT Users.User_ID, Users.Name, Total_Fine
FROM Users
INNER JOIN Fines ON Users.User_ID = Fines.User_ID
ORDER BY Total_Fine DESC
LIMIT 5;

--Find the average rating of books published by each publisher:
SELECT Publisher, AVG(Average_Rating) AS Avg_Rating
FROM Books
GROUP BY Publisher;

--List the books with their respective authors and genres:
SELECT Books.Title, Author.Author_name, Books.Genre
FROM Books
INNER JOIN Book_Author ON Books.Book_ID = Book_Author.Book_ID
INNER JOIN Author ON Book_Author.Author_ID = Author.ID;

--Identify the suppliers who have supplied books with an average rating above 4:
SELECT DISTINCT Supplier_ID, Supplier_Name
FROM Supplier
INNER JOIN Supplies ON Supplier.Supplier_ID = Supplies.Supplier_ID
INNER JOIN Books ON Supplies.Book_ID = Books.Book_ID
WHERE Books.Average_Rating > 4;

--Retrieve the number of books borrowed by each user:
SELECT Users.User_ID, Users.Name, COUNT(Transaction.Book_ID) AS Num_Borrowed
FROM Users
INNER JOIN Transaction ON Users.User_ID = Transaction.User_ID
GROUP BY Users.User_ID, Users.Name;

--Find the most reviewed books along with the number of reviews they received:
SELECT Books.Book_ID, Books.Title, COUNT(Review_ID) AS Num_Reviews
FROM Books
LEFT JOIN Review ON Books.Book_ID = Review.Book_ID
GROUP BY Books.Book_ID
ORDER BY Num_Reviews DESC;

--Calculate the total amount of fines paid and the total amount due for each user:
SELECT Users.User_ID, Users.Name, SUM(Fine_Paid) AS Total_Paid, SUM(Amount_Due) AS Total_Due
FROM Users
INNER JOIN Fines ON Users.User_ID = Fines.User_ID
GROUP BY Users.User_ID;

--List the users who have paid the highest total fines, along with their total paid fines and due fines:
SELECT Users.User_ID, Users.Name, SUM(Fines.Fine_Paid) AS Total_Paid, SUM(Fines.Amount_Due) AS Total_Due
FROM Users
INNER JOIN Fines ON Users.User_ID = Fines.User_ID
GROUP BY Users.User_ID, Users.Name
ORDER BY Total_Paid DESC;

---user having max due among the users
SELECT Users.User_ID, Users.Name, SUM(Fines.Amount_Due) AS Total_Due
FROM Users
INNER JOIN Fines ON Users.User_ID = Fines.User_ID
GROUP BY Users.User_ID, Users.Name
ORDER BY Total_Due DESC
LIMIT 1;


