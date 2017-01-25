# NotifyMe MySQL DB Tables

## Overview

This folder contains the table definitions for the database. 

## Technical stuffs

### Dependency list

There are a series of dependencies within the database. The outline is:

Users

Devices - Dependant on Users

Groups - Dependant on Users

Notifications - Dependant on Users and Groups

NotificationsToDevices - Depandant on Notifications and Devices

