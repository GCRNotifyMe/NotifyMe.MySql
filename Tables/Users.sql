CREATE TABLE
IF NOT EXISTS
Users(
    user_id INT(32) NOT NULL AUTO_INCREMENT
    COMMENT="Auto-assigned user id",

    email VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(123) NOT NULL
    COMMENT="User's password. Hashed with PHP crypt()",

    registered DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
    COMMENT="The date/time the user registered",
    lastSeen DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
    COMMENT="The last date/time the user sent a message/logged in",

    verified BOOL NOT NULL DEFAULT FALSE
    COMMENT="Value indicating if the email was verified",

    PRIMARY KEY (user_id)
);
