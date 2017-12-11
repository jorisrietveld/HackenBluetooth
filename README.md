![](resources/smartshaver.png)
# Bluetooth passive sniffing:
This repository contains some background information and some of the findings of INF2B's
research into the security of the Smart Shaver 7000.

# Table Of Contents
 - [Bluetooth protocol definitions](Definitions.md)
 - [Gathered Iphone Information](Iphone_Information.md)
 - [Gathered Smart Shaver Information](Smartshaver_Information.md)
 - [Wireshark Information](WiresharkFilters.md)
 - [Bluetooth Link Layer Information](BluetoothLinkLayer_Information.md)

# Wireshark Captures :
### :information_source: Tip use filter that searches for packets with comments
 - [This file contains authentication and unecrypted packages - first](Captures/Joris/FirstCapture.pcapng)
 - [This contains authentication and encrypted packages - 05_12_2017](Captures/Joris/Capture_05_12_2017.pcapng)

Notes:

### Registered UUID

- Philips Lighting B.V. 0xFE0F
- Philips Lighting B.V. 0xFE4B
- Apple, Inc 0xFE13
- Apple, Inc 0xFE25
- Apple, Inc 0xFE8A
- Apple, Inc 0xFE8B
- Apple, Inc 0xFEC7 <-> 0xFED4

# Gathered Information :key:


## Error:

```
Frame 30103: 39 bytes on wire (312 bits), 39 bytes captured (312 bits) on interface 1
PPI version 0, 24 bytes
    Version: 0
    Flags: 0x00
    Header length: 24
    DLT: 147
    Reserved: 36750c00007209028c17004520200000
DLT: 147, Payload: btle (Bluetooth Low Energy Link Layer)
Bluetooth Low Energy Link Layer
    Access Address: 0x50657b27
    [Master Address: 49:cc:e3:fe:25:b4 (49:cc:e3:fe:25:b4)]
    [Slave Address: f5:44:08:c4:50:3a (f5:44:08:c4:50:3a)]
    Data Header: 0x060e
        .... ..10 = LLID: Start of an L2CAP message or a complete L2CAP message with no fragmentation (0x2)
        .... .1.. = Next Expected Sequence Number: 1
        .... 1... = Sequence Number: 1
        ...0 .... = More Data: False
        000. .... = RFU: 0
        Length: 6
    <Length: 6>
    [L2CAP Index: 39]
    CRC: 0xc301d7
        [Expert Info (Note/Checksum): CRC unchecked, not all data available]
            [CRC unchecked, not all data available]
            <Message: CRC unchecked, not all data available>
            [Severity level: Note]
            [Group: Checksum]
Bluetooth L2CAP Protocol
    Length: 2
    CID: Security Manager Protocol (0x0006)
Bluetooth Security Manager Protocol
    Opcode: Pairing Failed (0x05)
    Reason: Pairing Not Supported (0x05)
```

```
Using filter: btcommon.eir_ad.entry.type == 0x09
Frame 18851: 69 bytes on wire (552 bits), 69 bytes captured (552 bits) on interface 1
PPI version 0, 24 bytes
DLT: 147
Bluetooth Low Energy Link Layer
    Access Address: 0x8e89bed6
    Packet Header: 0x2440 (PDU Type: ADV_IND, ChSel: #1, TxAdd: Random)
        .... 0000 = PDU Type: ADV_IND (0x0)
        ...0 .... = RFU: 0
        ..0. .... = Channel Selection Algorithm: #1
        .1.. .... = Tx Address: Random
        0... .... = Reserved: False
        Length: 36
    <Length: 36>
    Advertising Address: 61:8b:a9:f2:25:7e (61:8b:a9:f2:25:7e)
    Advertising Data
        Device Name: \036
            Length: 2
            Type: Device Name (0x09)
            Device Name: \036
        Manufacturer Specific
            Length: 18
            Type: Manufacturer Specific (0xff)
            Company ID: Apple, Inc. (0x004c)
            Data: 0c0e0018304e9524c9a43d00bb1309
                [Expert Info (Note/Undecoded): Undecoded]
                    [Undecoded]
                    <Message: Undecoded>
                    [Severity level: Note]
                    [Group: Undecoded]
        Device ID / Security Manager TK Value
            Length: 143
            Type: Device ID / Security Manager TK Value (0x10)
[Malformed Packet: BT Common]
    [Expert Info (Error/Malformed): Malformed Packet (Exception occurred)]
        [Malformed Packet (Exception occurred)]
        <Message: Malformed Packet (Exception occurred)>
        [Severity level: Error]
        [Group: Malformed]
    <Malformed Packet>
```

# Sources
This are some of the sources we used for sniffing the Bluetooth connection.

## Videos

- An playlist containing a lage quantity of information about Bluetooth Low enery. It includes information
  about the physical layer of the bluetooth connection to all the application layers. [Click here to view :arrow_forward:](https://www.youtube.com/watch?v=QBI3zf-MhcA&list=PLSdxNjcHc0u9PdQSd3l3-gDJGzJ_eB50f)
https://www.youtube.com/watch?v=G08fh5Sa7TU&t=95s
## Sites

1. An list of all the official bluetooth registered UUID (Universal Unique Identification) codes. [Click here to go to the site. :link:](https://www.bluetooth.com/specifications/assigned-numbers/16-bit-uuids-for-members)
2. Information about the Bluetooth paring process [Click here to go to the site. :link:](https://blog.bluetooth.com/bluetooth-pairing-part-4)
3. Information about the Bluetooth autentication process [Click here to go to the site. :link:](http://eecatalog.com/IoT/2014/08/13/increasing-wireless-security-with-bluetooth-low-energy/)
https://www.usenix.org/system/files/conference/woot13/woot13-ryan.pdf
https://eprint.iacr.org/2013/309.pdf


## Books


1. Bluetooth Core Specification 4.2 [Click here to download the book :book:](https://www.bluetooth.org/DocMan/handlers/DownloadDoc.ashx?doc_id=286439)
    - Page 2578, _Bluetooth Link Layer_ info about the device address.
2. FIDO Authentication
     [Click here to open the book :book:](https://fidoalliance.org/wp-content/uploads/Bluetooth__NFC_Transport_for_FIDO_U2F.pdf)


notes:
- http://www.farnell.com/datasheets/1391958.pdf
- http://electronix.ru/forum/index.php?act=Attach&type=post&id=81945
