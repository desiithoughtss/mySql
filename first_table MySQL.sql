-- CREATE TABLE Course(
--     cid INT,
--     cname VARCHAR(50)
-- );

-- INSERT INTO Course(cid, cname)
-- VALUES (1, "physics"),
-- (2, "maths");

-- SELECT * FROM Course

-- CREATE DATABASE IF NOT EXISTS instagramDB

-- USE instagramDB

CREATE TABLE IF NOT EXISTS users(
    userId INT PRIMARY KEY,
    userName VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS posts(
    postId INT PRIMARY KEY,
    userId INT,
    caption VARCHAR(100),
    FOREIGN KEY (userId) REFERENCES users(userId)
);

INSERT INTO users(userId, userName, email)
VALUES (1, "a", "a@gmail.com"),
       (2, "b", "b@gmail.com"),
       (3, "c", "c@gmail.com");

INSERT INTO posts(postId, userId, caption)
VALUES (101, 1, "aa"),
       (102, 2, "bb"),
       (103, 3, "cc");

SELECT * FROM users;
SELECT * FROM posts;
