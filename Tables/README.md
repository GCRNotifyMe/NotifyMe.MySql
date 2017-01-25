# NotifyMe MySQL DB Tables

## Overview
This folder contains the table definitions for the database. 

## Technical stuffs

### Table descriptions

#### Users
This table contains the user data, such as email, username, and so on. The
password is stored in this table, after being hased using PHP's `crypt()`.

#### Devices
This table stores a list of devices. A user can register their device with the
corresponding service (APNS for iPhone) and then the device name and token are
stored in the database. This table also contains data on the user it belongs
to, if its a defualt device, and whether or not it is active on the user's
account.
                                                                                |
#### Groups
This table contains data on notification groups. It contains a group name and
the user id it belongs to.

#### Notifications
A table containing the notifications sent by every user. Each notification 
contains data on the user that issued it and the group its in (optional).
Notifications also have an unread value, the alert text and the message text.

#### NotificationsToDevices
This table is to correlate notifications to the devices they were sent to. This
is useful for the devices to know which messages were sent to them.

### Dependency list

There are a series of dependencies within the database. The outline is:

Users

Devices - Dependant on Users

Groups - Dependant on Users

Notifications - Dependant on Users and Groups

NotificationsToDevices - Depandant on Notifications and Devices

### Dependency graph

![Alt text](http://g.gravizo.com/g?
  digraph G {
    size ="4,4";
	Users [shape=box];
	Devices [shape=box];
	Groups [shape=box];
	Notifications [shape=box];
	NotificationsToDevices [shape=box];
    Devices -> Users;
	Groups -> Users;
	Notifications -> Users;
	Notifications -> Groups;
	NotificationsToDevices -> Notifications;
	NotificationsToDevices -> Devices;
  }
)

_Graph courtesy of [Gravizo](http://www.gravizo.com "Gravizo")_
