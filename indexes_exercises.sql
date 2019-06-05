use employees;

show tables;

describe departments;
describe dept_emp;
describe dept_manager;
describe employees;
describe salaries;
describe titles;

use codeup_test_db;

ALTER TABLE albums
    ADD UNIQUE (artist, name);

describe albums;

-- unallowed duplicate entry

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop, rock, R&B');

-- another test table with multiple unique id

CREATE TABLE albums_unique(
                       id int unsigned not null auto_increment,
                       artist varchar(255) not null,
                       name varchar(255) not null,
                       release_date int not null,
                       sales decimal(10, 2),
                       genre varchar(255) not null,
                       PRIMARY KEY (id),
                       UNIQUE (artist, name)
);

describe albums_unique;