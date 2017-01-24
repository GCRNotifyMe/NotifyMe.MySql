CREATE TABLE
IF NOT EXISTS
Users(
    user_id INT(32) NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(123) NOT NULL,
    registered DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    lastSeen DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    verified INT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (user_id)
);