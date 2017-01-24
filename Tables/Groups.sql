CREATE TABLE
IF NOT EXISTS
Groups(
    group_id INT(32) NOT NULL AUTO_INCREMENT
    COMMENT="Auto-assigned group id",
    user_id INT(32) NOT NULL,

    name VARCHAR(255) NOT NULL,

    PRIMARY KEY (group_id),

    # Only allow each user a single group with the
    # same name.
    UNIQUE KEY `user_group` (user_id, name)

    FOREIGN KEY (user_id)
        REFERENCES Users(user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
);
