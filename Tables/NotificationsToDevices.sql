# This table correlates messages to devices
CREATE TABLE
IF NOT EXISTS
NotificationsToDevice(
    notification_id INT(32) UNSIGNED NOT NULL,
    device_id INT(32) UNSIGNED NOT NULL,

    FOREIGN KEY (notification_id)
        REFERENCES Notification(notification_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (device_id)
        REFERENCES Devices(device_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    UNIQUE KEY (notification_id, device_id)
);
