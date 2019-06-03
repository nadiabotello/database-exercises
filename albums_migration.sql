USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id int unsigned not null auto_increment,
    artist varchar(255) not null,
    name varchar(255) not null,
    release_date date,
    sales DECIMAL(5,3),
    genre varchar(255),
    PRIMARY KEY (id)
);