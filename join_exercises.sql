use join_test_db;

show tables;

INSERT INTO users (name, email, role_id) VALUES
('jim', 'jim@example.com', 2),
('anne', 'anne@example.com', null),
('ethel', 'ethel@example.com', 2),
('dave', 'dave@examples.com', 2);


INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles.name, COUNT(*) FROM users
JOIN roles ON users.role_id = roles.id
GROUP BY roles.name
ORDER BY COUNT(*) ASC, roles.name
LIMIT 10;


