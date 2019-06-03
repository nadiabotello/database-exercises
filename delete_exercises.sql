USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Exercise 1';

SELECT * FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre disco' AS 'Exercise 2';

SELECT * FROM albums WHERE genre = 'Disco';

SELECT 'Albums by The Beatles (never will I delete Whitney)' AS 'Exercise 3';

SELECT * FROM albums WHERE artist = 'The Beatles';