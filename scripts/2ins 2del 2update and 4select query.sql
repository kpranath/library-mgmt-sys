INSERT INTO Books (Book_ID, Title, Average_Rating, Language_Code, Num_Pages, Ratings_Count, Publisher, Genre, Book_Count)
VALUES (1, 'Example Book', 4.5, 'EN', 300, 150, 'Example Publisher', 'Fiction', 10);
--------------
INSERT INTO Users (User_ID, Name, Email, Password, Created_At)
VALUES (1, 'John Doe', 'john.doe@example.com', 'securepassword', '2021-01-01');
--------------------
DELETE FROM Books WHERE Book_ID = 1;
----------------
DELETE FROM Users WHERE User_ID = 1;
------------------------
UPDATE Books SET Average_Rating = 4.7 WHERE Book_ID = 1;
-----------
UPDATE Users SET Email = 'new.email@example.com' WHERE User_ID = 1;
------------
SELECT b.Title, a.Author_name
FROM Books b
JOIN Book_Author ba ON b.Book_ID = ba.Book_ID
JOIN Author a ON a.ID = ba.Author_ID
WHERE b.Book_ID = 1;
-------------
SELECT Title, Average_Rating
FROM Books
ORDER BY Average_Rating DESC;
-----------------
SELECT Genre, COUNT(*) AS Num_Books
FROM Books
GROUP BY Genre;
---------------
SELECT Title, Average_Rating
FROM Books
WHERE Average_Rating > (SELECT AVG(Average_Rating) FROM Books);
