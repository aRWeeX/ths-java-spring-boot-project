--
-- File generated with SQLiteStudio v3.4.17 on fre maj 16 14:50:42 2025
--
-- Text encoding used: System
--
BEGIN;

DROP TABLE IF EXISTS loan_books;
DROP TABLE IF EXISTS loans;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS authors;

-- Table: authors
CREATE TABLE IF NOT EXISTS authors (
    author_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    birth_year INTEGER,
    nationality VARCHAR(100)
);
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Astrid', 'Lindgren', 1907, 'Swedish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Stieg', 'Larsson', 1954, 'Swedish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Camilla', 'Läckberg', 1974, 'Swedish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Henning', 'Mankell', 1948, 'Swedish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Selma', 'Lagerlöf', 1858, 'Swedish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('August', 'Strindberg', 1849, 'Swedish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Pär', 'Lagerkvist', 1891, 'Swedish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Vilhelm', 'Moberg', 1898, 'Swedish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Hjalmar', 'Söderberg', 1869, 'Swedish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Tove', 'Jansson', 1914, 'Finnish-Swedish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Agatha', 'Christie', 1890, 'British');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Arthur Conan', 'Doyle', 1859, 'British');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('J.K.', 'Rowling', 1965, 'British');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('George', 'Orwell', 1903, 'British');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Jane', 'Austen', 1775, 'British');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Charles', 'Dickens', 1812, 'British');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Virginia', 'Woolf', 1882, 'British');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Oscar', 'Wilde', 1854, 'Irish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('James', 'Joyce', 1882, 'Irish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Bram', 'Stoker', 1847, 'Irish');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Leo', 'Tolstoy', 1828, 'Russian');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Fyodor', 'Dostoevsky', 1821, 'Russian');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Anton', 'Chekhov', 1860, 'Russian');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Vladimir', 'Nabokov', 1899, 'Russian-American');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Ernest', 'Hemingway', 1899, 'American');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Mark', 'Twain', 1835, 'American');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('F. Scott', 'Fitzgerald', 1896, 'American');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Harper', 'Lee', 1926, 'American');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('John', 'Steinbeck', 1902, 'American');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Kurt', 'Vonnegut', 1922, 'American');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Gabriel García', 'Márquez', 1927, 'Colombian');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Jorge Luis', 'Borges', 1899, 'Argentine');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Paulo', 'Coelho', 1947, 'Brazilian');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Isabel', 'Allende', 1942, 'Chilean');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Milan', 'Kundera', 1929, 'Czech');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Franz', 'Kafka', 1883, 'Czech');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Hermann', 'Hesse', 1877, 'German');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Thomas', 'Mann', 1875, 'German');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Umberto', 'Eco', 1932, 'Italian');
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES ('Haruki', 'Murakami', 1949, 'Japanese');

-- Table: books
CREATE TABLE IF NOT EXISTS books (
    book_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    publication_year INTEGER,
    available_copies INTEGER DEFAULT 1,
    total_copies INTEGER DEFAULT 1,
    author_id BIGINT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Pippi Longstocking', 1945, 2, 3, 1);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Girl with the Dragon Tattoo', 2005, 1, 2, 2);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Ice Princess', 2003, 2, 2, 3);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Faceless Killers', 1991, 1, 2, 4);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Wonderful Adventures of Nils', 1906, 3, 3, 5);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Red Room', 1879, 2, 2, 6);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Barabbas', 1950, 1, 1, 7);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Emigrants', 1949, 2, 2, 8);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Doctor Glas', 1905, 1, 1, 9);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Moomins and the Great Flood', 1945, 2, 2, 10);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Murder on the Orient Express', 1934, 1, 2, 11);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Adventure of Sherlock Holmes', 1892, 2, 3, 12);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Harry Potter and the Philosopher''s Stone', 1997, 0, 2, 13);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('1984', 1949, 1, 2, 14);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Pride and Prejudice', 1813, 2, 2, 15);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Great Expectations', 1861, 1, 2, 16);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('To the Lighthouse', 1927, 1, 1, 17);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Picture of Dorian Gray', 1890, 1, 1, 18);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Ulysses', 1922, 1, 1, 19);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Dracula', 1897, 1, 2, 20);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('War and Peace', 1869, 1, 1, 21);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Crime and Punishment', 1866, 1, 2, 22);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Cherry Orchard', 1904, 1, 1, 23);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Lolita', 1955, 1, 1, 24);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Old Man and the Sea', 1952, 1, 2, 25);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Adventures of Huckleberry Finn', 1884, 2, 2, 26);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Great Gatsby', 1925, 0, 2, 27);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('To Kill a Mockingbird', 1960, 1, 2, 28);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Grapes of Wrath', 1939, 1, 1, 29);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Slaughterhouse-Five', 1969, 1, 1, 30);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('One Hundred Years of Solitude', 1967, 1, 1, 31);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Labyrinths', 1962, 1, 1, 32);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Alchemist', 1988, 2, 2, 33);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The House of the Spirits', 1982, 1, 1, 34);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Unbearable Lightness of Being', 1984, 1, 1, 35);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Metamorphosis', 1915, 1, 2, 36);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Steppenwolf', 1927, 1, 1, 37);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Magic Mountain', 1924, 1, 1, 38);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Name of the Rose', 1980, 1, 1, 39);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Norwegian Wood', 1987, 1, 2, 40);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Girl Who Played with Fire', 2006, 1, 1, 2);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Preacher', 2004, 1, 1, 3);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The White Lioness', 1993, 1, 1, 4);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Gösta Berling''s Saga', 1891, 1, 1, 5);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Miss Julie', 1888, 1, 1, 6);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Dwarf', 1944, 1, 1, 7);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('The Last Letter', 1959, 1, 1, 8);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Gertrud', 1906, 1, 1, 9);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('Finn Family Moomintroll', 1948, 1, 1, 10);
INSERT INTO books (title, publication_year, available_copies, total_copies, author_id) VALUES ('And Then There Were None', 1939, 1, 1, 11);

-- Table: users
CREATE TABLE IF NOT EXISTS users (
    user_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    registration_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (first_name, last_name, email, password, registration_date) VALUES ('Anna', 'Andersson', 'anna.andersson@email.com', 'password123', '2024-01-15 10:30:00');
INSERT INTO users (first_name, last_name, email, password, registration_date) VALUES ('Erik', 'Eriksson', 'erik.eriksson@email.com', 'password456', '2024-01-20 14:15:00');
INSERT INTO users (first_name, last_name, email, password, registration_date) VALUES ('Maria', 'Karlsson', 'maria.karlsson@email.com', 'password789', '2024-02-01 09:45:00');
INSERT INTO users (first_name, last_name, email, password, registration_date) VALUES ('Johan', 'Johansson', 'johan.johansson@email.com', 'secure123', '2024-02-10 16:20:00');
INSERT INTO users (first_name, last_name, email, password, registration_date) VALUES ('Emma', 'Svensson', 'emma.svensson@email.com', 'mypass456', '2024-02-15 11:00:00');
INSERT INTO users (first_name, last_name, email, password, registration_date) VALUES ('Oscar', 'Nilsson', 'oscar.nilsson@email.com', 'secret789', '2024-03-01 08:30:00');
INSERT INTO users (first_name, last_name, email, password, registration_date) VALUES ('Sofia', 'Larsson', 'sofia.larsson@email.com', 'pass1234', '2024-03-05 13:45:00');
INSERT INTO users (first_name, last_name, email, password, registration_date) VALUES ('Lucas', 'Olsson', 'lucas.olsson@email.com', 'mykey567', '2024-03-10 15:30:00');
INSERT INTO users (first_name, last_name, email, password, registration_date) VALUES ('Astrid', 'Persson', 'astrid.persson@email.com', 'pwd890', '2024-03-15 12:15:00');
INSERT INTO users (first_name, last_name, email, password, registration_date) VALUES ('William', 'Gustafsson', 'william.gustafsson@email.com', 'login123', '2024-03-20 17:00:00');

-- Table: loans
CREATE TABLE IF NOT EXISTS loans (
    loan_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT NOT NULL,
    borrowed_date DATETIME NOT NULL,
    due_date DATETIME NOT NULL,
    returned_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (1, '2024-01-15 10:00:00', '2024-01-29 10:00:00', '2024-01-25 14:30:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (2, '2024-01-20 11:00:00', '2024-02-03 11:00:00', '2024-02-01 09:15:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (3, '2024-01-25 09:30:00', '2024-02-08 09:30:00', '2024-02-05 16:45:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (4, '2024-02-01 14:00:00', '2024-02-15 14:00:00', '2024-02-12 11:20:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (5, '2024-02-05 13:30:00', '2024-02-19 13:30:00', '2024-02-18 10:00:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (6, '2024-02-10 08:45:00', '2024-02-24 08:45:00', '2024-02-22 15:30:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (7, '2024-02-15 16:15:00', '2024-03-01 16:15:00', '2024-02-28 12:45:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (8, '2024-02-20 10:30:00', '2024-03-06 10:30:00', '2024-03-04 14:20:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (9, '2024-02-25 12:00:00', '2024-03-11 12:00:00', '2024-03-09 09:30:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (10, '2024-03-01 15:45:00', '2024-03-15 15:45:00', '2024-03-13 11:15:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (1, '2024-03-10 09:00:00', '2024-03-24 09:00:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (2, '2024-03-12 14:30:00', '2024-03-26 14:30:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (3, '2024-03-15 11:15:00', '2024-03-29 11:15:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (4, '2024-03-18 13:45:00', '2024-04-01 13:45:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (5, '2024-03-20 10:30:00', '2024-04-03 10:30:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (6, '2024-03-22 15:00:00', '2024-04-05 15:00:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (7, '2024-03-24 12:30:00', '2024-04-07 12:30:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (8, '2024-03-26 09:45:00', '2024-04-09 09:45:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (9, '2024-03-28 14:00:00', '2024-04-11 14:00:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (10, '2024-03-30 11:30:00', '2024-04-13 11:30:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (1, '2024-02-05 08:30:00', '2024-02-19 08:30:00', '2024-02-17 13:00:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (2, '2024-02-08 10:15:00', '2024-02-22 10:15:00', '2024-02-20 15:30:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (3, '2024-02-12 13:45:00', '2024-02-26 13:45:00', '2024-02-24 09:45:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (4, '2024-02-15 09:00:00', '2024-03-01 09:00:00', '2024-02-28 14:15:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (5, '2024-02-18 14:30:00', '2024-03-04 14:30:00', '2024-03-02 11:00:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (6, '2024-02-20 11:45:00', '2024-03-06 11:45:00', '2024-03-04 16:30:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (7, '2024-02-22 16:00:00', '2024-03-08 16:00:00', '2024-03-06 12:15:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (8, '2024-02-25 12:15:00', '2024-03-11 12:15:00', '2024-03-09 10:45:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (9, '2024-02-28 10:00:00', '2024-03-14 10:00:00', '2024-03-12 15:20:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (10, '2024-03-02 15:30:00', '2024-03-16 15:30:00', '2024-03-14 09:30:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (1, '2024-03-31 10:00:00', '2024-04-14 10:00:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (2, '2024-03-31 11:30:00', '2024-04-14 11:30:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (3, '2024-04-01 09:15:00', '2024-04-15 09:15:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (4, '2024-04-01 14:45:00', '2024-04-15 14:45:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (5, '2024-04-02 12:00:00', '2024-04-16 12:00:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (6, '2024-04-02 16:30:00', '2024-04-16 16:30:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (7, '2024-04-03 11:00:00', '2024-04-17 11:00:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (8, '2024-04-03 15:15:00', '2024-04-17 15:15:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (9, '2024-04-04 13:30:00', '2024-04-18 13:30:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (10, '2024-04-04 10:45:00', '2024-04-18 10:45:00', NULL);
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (1, '2024-01-10 14:00:00', '2024-01-24 14:00:00', '2024-01-22 11:30:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (2, '2024-01-12 09:30:00', '2024-01-26 09:30:00', '2024-01-24 16:15:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (3, '2024-01-15 11:45:00', '2024-01-29 11:45:00', '2024-01-27 13:00:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (4, '2024-01-18 15:30:00', '2024-02-01 15:30:00', '2024-01-30 10:45:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (5, '2024-01-20 12:15:00', '2024-02-03 12:15:00', '2024-02-01 14:30:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (6, '2024-01-22 10:00:00', '2024-02-05 10:00:00', '2024-02-03 16:00:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (7, '2024-01-25 13:45:00', '2024-02-08 13:45:00', '2024-02-06 11:15:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (8, '2024-01-28 11:30:00', '2024-02-11 11:30:00', '2024-02-09 15:45:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (9, '2024-01-30 16:15:00', '2024-02-13 16:15:00', '2024-02-11 12:30:00');
INSERT INTO loans (user_id, borrowed_date, due_date, returned_date) VALUES (10, '2024-02-02 14:00:00', '2024-02-16 14:00:00', '2024-02-14 10:00:00');

-- Table: loan_books
CREATE TABLE IF NOT EXISTS loan_books (
    loan_id BIGINT NOT NULL,
    book_id BIGINT NOT NULL,
    PRIMARY KEY (loan_id, book_id),
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE
);
INSERT INTO loan_books (loan_id, book_id) VALUES (1, 1);
INSERT INTO loan_books (loan_id, book_id) VALUES (2, 5);
INSERT INTO loan_books (loan_id, book_id) VALUES (3, 8);
INSERT INTO loan_books (loan_id, book_id) VALUES (4, 12);
INSERT INTO loan_books (loan_id, book_id) VALUES (5, 15);
INSERT INTO loan_books (loan_id, book_id) VALUES (6, 20);
INSERT INTO loan_books (loan_id, book_id) VALUES (7, 25);
INSERT INTO loan_books (loan_id, book_id) VALUES (8, 30);
INSERT INTO loan_books (loan_id, book_id) VALUES (9, 35);
INSERT INTO loan_books (loan_id, book_id) VALUES (10, 40);
INSERT INTO loan_books (loan_id, book_id) VALUES (1, 2);
INSERT INTO loan_books (loan_id, book_id) VALUES (2, 7);
INSERT INTO loan_books (loan_id, book_id) VALUES (3, 11);
INSERT INTO loan_books (loan_id, book_id) VALUES (4, 16);
INSERT INTO loan_books (loan_id, book_id) VALUES (5, 21);
INSERT INTO loan_books (loan_id, book_id) VALUES (6, 26);
INSERT INTO loan_books (loan_id, book_id) VALUES (7, 31);
INSERT INTO loan_books (loan_id, book_id) VALUES (8, 36);
INSERT INTO loan_books (loan_id, book_id) VALUES (9, 41);
INSERT INTO loan_books (loan_id, book_id) VALUES (10, 45);
INSERT INTO loan_books (loan_id, book_id) VALUES (1, 3);
INSERT INTO loan_books (loan_id, book_id) VALUES (2, 6);
INSERT INTO loan_books (loan_id, book_id) VALUES (3, 9);
INSERT INTO loan_books (loan_id, book_id) VALUES (4, 14);
INSERT INTO loan_books (loan_id, book_id) VALUES (5, 17);
INSERT INTO loan_books (loan_id, book_id) VALUES (6, 22);
INSERT INTO loan_books (loan_id, book_id) VALUES (7, 24);
INSERT INTO loan_books (loan_id, book_id) VALUES (8, 28);
INSERT INTO loan_books (loan_id, book_id) VALUES (9, 33);
INSERT INTO loan_books (loan_id, book_id) VALUES (10, 38);
INSERT INTO loan_books (loan_id, book_id) VALUES (1, 13);
INSERT INTO loan_books (loan_id, book_id) VALUES (2, 27);
INSERT INTO loan_books (loan_id, book_id) VALUES (3, 4);
INSERT INTO loan_books (loan_id, book_id) VALUES (4, 18);
INSERT INTO loan_books (loan_id, book_id) VALUES (5, 19);
INSERT INTO loan_books (loan_id, book_id) VALUES (6, 23);
INSERT INTO loan_books (loan_id, book_id) VALUES (7, 29);
INSERT INTO loan_books (loan_id, book_id) VALUES (8, 32);
INSERT INTO loan_books (loan_id, book_id) VALUES (9, 34);
INSERT INTO loan_books (loan_id, book_id) VALUES (10, 37);
INSERT INTO loan_books (loan_id, book_id) VALUES (1, 39);
INSERT INTO loan_books (loan_id, book_id) VALUES (2, 42);
INSERT INTO loan_books (loan_id, book_id) VALUES (3, 43);
INSERT INTO loan_books (loan_id, book_id) VALUES (4, 44);
INSERT INTO loan_books (loan_id, book_id) VALUES (5, 46);
INSERT INTO loan_books (loan_id, book_id) VALUES (6, 47);
INSERT INTO loan_books (loan_id, book_id) VALUES (7, 48);
INSERT INTO loan_books (loan_id, book_id) VALUES (8, 49);
INSERT INTO loan_books (loan_id, book_id) VALUES (9, 50);
INSERT INTO loan_books (loan_id, book_id) VALUES (10, 10);

COMMIT;
