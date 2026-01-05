CREATE DATABASE LibraryDB;

USE LibraryDB;

CREATE TABLE Books (
    ID INT PRIMARY KEY,
    Title NVARCHAR(100) NOT NULL,
    Author NVARCHAR(100),
    Price DECIMAL(6,2),
    IsAvailable BIT
);

INSERT INTO Books VALUES
(1, 'Clean Code', 'Robert Martin', 60, 1),
(2, 'Database Systems', 'Elmasri', 75, 1),
(3, 'C Programming', 'Dennis Ritchie', 45, 0);

SELECT * FROM Books;

SELECT * FROM Books
WHERE Price > 50;

UPDATE Books
SET Price = 55
WHERE ID = 3;

DELETE FROM Books
WHERE ID = 2;