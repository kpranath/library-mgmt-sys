COPY staging_book_author FROM 'D:\\Spring 2024\\DMQL\\book_author.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',')
select book_id from books
select * from book_author
CREATE TEMP TABLE staging_book_author (
    book_id INT,
    author_id INT
);
DELETE FROM staging_book_author;
select * from staging_book_author
INSERT INTO book_author (book_id, author_id)
SELECT book_id, author_id FROM staging_book_author
WHERE EXISTS (
    SELECT 1 FROM books WHERE book_id = staging_book_author.book_id
) AND EXISTS (
    SELECT 1 FROM author WHERE author_id = staging_book_author.author_id
);
