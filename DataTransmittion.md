















# Data Transmission Iphone <-> Data Transmission Smart Shaver

## Smart Shaver

### Advertisement Data
> This is the data the Smart Shaver advertises.

| Advertises Property   | Value                            |
|:----------------------|:---------------------------------|
| Device Is Connectable | Yes                              |
| Local Name            | Philips S7920                    |
| Service UUID          | Batery, Device Information, FFF0 |
| Tx Power Level        | 8                                |


### Gatt Profiles Smart Shaver
> This are the GATT profiles that are available on the Smart Shaver.

#### Device Information Profile:

| UUID   | Characteristic User Description | Properties |                  |              | Data:   |
|:-------|:--------------------------------|:-----------|:-----------------|-------------:|--------:|
| 0x2A25 | Serial Number String            | Read       |                  | No value     |         |
| 0x2A27 | Model Number String             | Read       | 0x5337393230     | 10:57:28.014 | S7920   |
| 0x2A27 | Hardware Revision String        | Read       | 0x363531         | 10:57:28.073 | 651     |
| 0x2A26 | Firmware Revision String        | Read       | 0x373636         | 10:57:28.134 | 766     |
| 0x2A28 | Software Revision String        | Read       | 0x373735         | 10:57:28.194 | 775     |
| 0x2A29 | Manufacturer Name String        | Read       | 0x5068696C697073 | 10:57:28.253 | Philips |

#### FFF0 _(Custom)_ Profile:

| UUID   | Name                               | Properties          |                        |              | Client Characteristic Config |
|-------:|-----------------------------------:|--------------------:|-----------------------:|-------------:|-----------------------------:|
| 0xFFF1 | Motor Current                      | Read, Notify        | 0x0000                 | 12:01:51.823 | 0                            |
| 0xFFE1 | Motor Current Maximum              | Read                | 0xCA08                 | 12:12:12.598 |                              |
| 0xFFF2 | Motor RPM                          | Read, Write, Notify | 0xF41A                 | 12:26:30.879 | 0                            |
| 0xFFE3 | Motor RPM Max                      | Read                | 0xF41A                 | 11:50:08.680 |                              |
| 0xFFFB | Indication                         | Read, Write         | 0x00                   | 12:29:31.075 |                              |
| 0xFFF3 | Amount Of Operation Turns          | Read, Notify        | 0x0C00                 | 12:30:27.010 | 0                            |
| 0xFFF4 | Total Age                          | Read, Write, Notify | 0x20E95B03             | 12:32:18.879 | 0                            |
| 0xFFF5 | Duration Of The Last Operation     | Read, Notify        | 0x3300                 | 12:34:15.948 | 0                            |
| 0xFFF6 | Days Since Last Operation          | Read, Notify        | 0x0000                 | 12:35:01.734 | 0                            |
| 0xFFF8 | Amount Of Charges                  | Read, Notify        | 0x0000                 | 12:34:55.299 | 0                            |
| 0xFFFC | Handle State                       | Read, Notify        | 0x01                   | 12:36:29.103 | 0                            |
| 0xFFFD | Handle Load Type                   | Read, Notify        | 0x00                   | 12:37:13.404 | 0                            |
| 0xFFFE | Travel Locked                      | Read, Notify        | 0x00                   | 12:37:51.768 | 0                            |
| 0xFFE0 | Cleaning Reminder                  | Read, Write, Notify | 0x00                   | 12:38:34.337 | 0                            |
| 0xFFE2 | Replacement Trigger                | Read, Write, Notify | 0x00                   | 12:48:36.163 | 0                            |
| 0xFFE4 | System Notification                | Read, Write, Notify | 0x02                   | 12:49:51.155 | 0                            |
| 0xFFE5 | Battery Status                     | Read, Notify        | 0x02                   | 12:50:51.792 | 1                            |
| 0xFFE6 | Total Running Motor                | Read, Notify        | 0x4400                 | 12:51:49.955 | 0                            |
| 0xFFDF | History Time Stamp                 | Read                | 0xA3925603             | 14:24:59.657 |                              |
| 0xFFDE | History Average Current            | Read                | 0x8C00                 | 14:26:06.234 |                              |
| 0xFFDD | History Operation Duration         | Read                | 0x9E03                 | 14:27:41.274 |                              |
| 0xFFDC | History RPM                        | Read                | 0xF41A                 | 14:28:21.121 |                              |
| 0xFFDB | History Synchronization Status     | Read, Write, Notify | 0x03                   | 14:29:39.578 | 0                            |
| 0xFFD9 | History Overwritten Operations     | Read                | 0x00                   | 14:30:28.830 |                              |
| 0xFFDA | History Notification Trigger Turns | Read, Write         | 0x06                   | 14:31:27.242 |                              |
| 0xFFD8 | Batch No                           | Read                | 0x35313630343130313300 | 14:31:59.911 |                              |
| 0xFFD7 | Enabling Services                  | Read, Write         | 0x0000                 | 14:33:26.783 |                              |

#### Battery Service Profile

| UUID   | Characteristic User Description | Properties   |      |              | Client Characteristic Config |
|:-------|:--------------------------------|:-------------|:-----|-------------:|-----------------------------:|
| 0x2A19 | Battery Level                   | Read, Notify | 0x0D | 10:57:29:333 | 1                            |


## Iphone
> In the bluetooth connection the iPhone will take the role of server _(Master)_. This means that the iPhone will make
> the initial connection request

## Advertisement Data Iphone

## Available GATT Profiles Iphone



