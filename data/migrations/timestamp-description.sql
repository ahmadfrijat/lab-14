Query 1: CREATE TABLE AUTHORS (id SERIAL PRIMARY KEY, name VARCHAR(255));

-- his query will create a second table in the lab14_normal database named authors

Query 2: INSERT INTO authors(name) SELECT DISTINCT author FROM books;

-- This query will use a simple subquery to retrieve unique author values from the books table and insert each one into the authors table in the name column.

Query 3: ALTER TABLE books ADD COLUMN author_id INT;

-- This query will add a column to the books table named author_id. This will connect each book to a specific author in the other table.

Query 4: UPDATE books SET author_id=author.id FROM (SELECT * FROM authors) AS author WHERE books.author = author.name;

-- This query will prepare a connection between the two tables

Query 5: ALTER TABLE books DROP COLUMN author;

-- This query will modify the books table by removing the column named author

Query 6: ALTER TABLE books ADD CONSTRAINT fk_authors FOREIGN KEY (author_id) REFERENCES authors(id);

-- This query will modify the data type of the author_id in the books table