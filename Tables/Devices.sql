CREATE TABLE
IF NOT EXISTS
Devices(
    device_id INT(32) UNSIGNED NOT NULL AUTO_INCREMENT
    COMMENT 'Auto-assigned device id',
    user_id INT(32) UNSIGNED NOT NULL
    COMMENT 'The id of the user this device is tied to',

    service_id VARCHAR(64) NOT NULL
    COMMENT 'The id used by the notification service (APNS/GCM)',

    name VARCHAR(255) NOT NULL,

    type VARCHAR(255) NOT NULL
    COMMENT 'The type of device. iPhone, etc.',

    defaultDevice BOOL NOT NULL DEFAULT FALSE
    COMMENT 'Boolean value to indicate if the device is a default',

    registered DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
    COMMENT 'The date/time the device was registered',

    # This is used to indicate if a device is active on the account
    # (1) or has been deleted (NULL). Used to ensure active devices
    # remain unique based on name. With a unique set on (name, user_id,
    # active) means that a user cant have multiple active devices
    # with the same name. When a device is deleted and active set to
    # NULL, it is no longer constrained to the unique values.
    active BOOL DEFAULT 1
    COMMENT 'Indicates if the device is active or deleted (NULL)',

    UNIQUE KEY `device_user` (user_id, name, active),

    FOREIGN KEY (user_id)
        REFERENCES Users(user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    PRIMARY KEY (device_id)
);
