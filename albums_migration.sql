USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id int unsigned not null auto_increment,
    artist varchar(255) not null,
    name varchar(255) not null,
    release_date int not null,
    sales decimal(10, 2),
    genre varchar(255) not null,
    PRIMARY KEY (id)
);