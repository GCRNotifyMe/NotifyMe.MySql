CREATE TABLE
IF NOT EXISTS
Notifications(
    notification_id INT(32) UNSIGNED NOT NULL AUTO_INCREMENT
    COMMENT 'Auto-assigned notification id',
    user_id INT(32) UNSIGNED NOT NULL
    COMMENT 'The id of the user who generated this notification',
    group_id INT(32) UNSIGNED
    COMMENT 'The id of the group this notification is tied to. May be null if part of no group',

    sent DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    unread BOOL NOT NULL DEFAULT TRUE,
    timeRead DATETIME
    COMMENT 'The date/time the alert is read',

    source VARCHAR(255) NOT NULL,

    alert VARCHAR(255) NOT NULL,
    message TEXT,

    FOREIGN KEY (group_id)
        REFERENCES Groups(group_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (user_id)
        REFERENCES Users(user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    PRIMARY KEY (notification_id)
);
