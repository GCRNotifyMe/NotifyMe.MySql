# This table correlates messages to devices
CREATE TABLE
IF NOT EXISTS
NotificationsToDevice(
    notification_id INT(32) NOT NULL,
    device_id INT(32) NOT NULL,

    UNIQUE KEY (notification_id, device_id)
);
