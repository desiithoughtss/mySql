CREATE DATABASE IF NOT EXISTS instagramDB
USE instagramDB

CREATE TABLE IF NOT EXISTS users(
    userId INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS posts(
    postId INT,
    caption VARCHAR(100),
    userId INT,
    FOREIGN KEY (userId) REFERENCES users(userId)
);

INSERT INTO users(userId, username, email)
VALUES(1, "a", "a@gmail.com"),
(2, "b", "b@gmail.com"),
(3, "c", "c@gmail.com");

INSERT INTO posts(postId, caption, userId)
VALUES(101, "aaa", 1),
(102, "bbb", 2),
(103, "c", 3);

SHOW TABLES;

SELECT * FROM users;
SELECT * FROM posts;
