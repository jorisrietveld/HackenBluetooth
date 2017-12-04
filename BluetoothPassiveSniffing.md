# Bluetooth passive sniffing:
## Definitions:
#### General
- GAP	Genaric Access Profile
- GATT	Generic Attribute Profile
- UUID	Universional Unique Identifiere
- PDU	(Advertising Channel) Packet Data Unit
- L2CAP Logic Link Control and Adaptation Protocol.
- LE LL Bluetooth Low Energy Link Layer.
-
## L2CAP ATT
- MTU Maximum Transmission Unit
#### Authentication
 - OOB Out Of Band
> OOB, or Out-of-Band, uses an external means of communication to exchange some information used in the pairing process. The OOB media could be any other wireless communication standard which can carry the corresponding information for pairing, like NFC or QRCode.
 - BF Bonding Flags
 > Bonding is the exchange of long-term keys after pairing occurs, and storing those keys for later use—it is the creation of permanent security between devices. Pairing is the mechanism that allows bonding to occur.

#### GATT

<hr>

## Wireshark filters

|                                               Filter |                                                              description |    Type |
|-----------------------------------------------------:|-------------------------------------------------------------------------:|--------:|
|                   btcommon.eir_ad.entry.type == 0xff |                                             Filter on device type Iphone | Include |
|                   btcommon.eir_ad.entry.type == 0x09 |                                       Filter on device type Smart Shaver | Include |
| btcommon.eir_ad.entry.device_name == "Philips S7920" |                                            Filter on device name Philips | Include |
|              btle.advertising_header.pdu_type == 0x3 |                                  Filter on Packet data type Scan Request | Include |
|              btle.advertising_header.pdu_type == 0x2 | Filter on Packet data type: non-connectable undirected advertising event | Include |
|              btle.advertising_header.pdu_type == 0x0 |     Filter on Packet data type: connectable undirected advertising event | Include |
|              btle.advertising_header.pdu_type == 0x1 |       Filter on Packet data type: connectable directed advertising event | Include |
|              btle.advertising_header.pdu_type == 0x4 |                                Filter on Packet data type: Scan Response | Include |
|              btle.advertising_header.pdu_type == 0x5 |                         Filter on Packet data type: _Connection Request_ | Include |
|              btle.advertising_header.pdu_type == 0x6 |        Filter on Packet data type:scannable undirected advertising event | Include |
|                                btl2cap.cid == 0x0004 |                               Filter on Channel 4, ATT Protocol commands | Include |
|                                btl2cap.cid == 0x0006 |                           Filter on channel 6, Security Manager Protocol | Include |
|             btle.master_bd_addr == 49:cc:e3:fe:25:b4 |            Filter on paired communication where the Iphone is the master | Include |
|              btle.slave_bd_addr == f5:44:08:c4:50:3a |       Filter on paired communication where the smart shaver is the slave | Include |
|                                              btl2cap |            Search for Logic Link Control and Adaptation Protocol packets | Include |
|                                                      |                                                                          |         |


Notes:
### Registered UUID
- Philips Lighting B.V.     0xFE0F
- Philips Lighting B.V.     0xFE4B
- Apple, Inc                0xFE13
- Apple, Inc                0xFE25
- Apple, Inc                0xFE8A
- Apple, Inc                0xFE8B
- Apple, Inc                0xFEC7 <-> 0xFED4

### Link Layer - Device Address
To generate a resolvable private address, the device must have either the
Local Identity Resolving Key (IRK) or the Peer Identity Resolving Key (IRK).
The resolvable private address shall be generated with the IRK and a randomly
generated 24-bit number. The random number is known as prand and shall
meet the following requirements:
• The two most significant bits of prand shall be equal to 0 and 1 as shown in
Figure 1.5
• All bits of the random part of prand shall not be equal to 0
• All bits of the random part of prand shall not be equal to 1
The format of the resolvable private address is shown in Figure 1.5.


### Link Layer Controll Procedures

| Opcode |        Controll PDU name |                              Description |
|-------:|-------------------------:|-----------------------------------------:|
|   0x00 | LL_CONNECTION_UPDATE_REQ |             Update Connection  Intervals |
|   0X01 |       LL_CHANNEL_MAP_REQ |                      Update Channel Maps |
|   0X02 |         LL_TERMINATE_IND |               Disconnect  the connection |
|   0X03 |               LL_ENC_REQ |                      Encryption  Request |
|   0X04 |               LL_ENC_REQ |                      Encryption Response |
|   0x05 |         LL_START_ENC_REQ | 3 way Handshake  for Starting Encryption |
|   0x06 |         LL_START_ENC_RSP | 3 way Handshake  for Starting Encryption |
|   0x07 |           LL_UNKNOWN_RSP |                      Control PDU Unknown |
|   0x08 |           LL_FEATURE_REQ |           Master sends Features to Slave |
|   0x09 |           LL_FEATURE_RSP |        Slave sends  Features  to  Master |
|   0x0A |         LL_PAUSE_ENC_REQ |        Pause Encryption  to Refresh Keys |
|   0x0B |         LL_PAUSE_ENC_RSP |        Pause Encryption  to Refresh Keys |
|   0x0C |           LL_VERSION_IND |                        Version  Exchange |
|   0x0D |            LL_REJECT_IND |                       Reject Control PDU |

# Gathered Information :key:
### Connection Link Layer Data
 - Access Address: 0x50657b27
 - CRC Init: 0x9bc31e
 - Window Size: 3 (3.75 msec)
 - Window Offset: 4 (5 msec)
 - Interval: 24 (30 msec)
 - Latency: 0
 - Timeout: 72 (90 msec)
 - Channel Map: ffffffff1f
    ```
       .... ...1 = RF Channel 1 (2404 MHz - Data - 0): True
       .... ..1. = RF Channel 2 (2406 MHz - Data - 1): True
       .... .1.. = RF Channel 3 (2408 MHz - Data - 2): True
       .... 1... = RF Channel 4 (2410 MHz - Data - 3): True
       ...1 .... = RF Channel 5 (2412 MHz - Data - 4): True
       ..1. .... = RF Channel 6 (2414 MHz - Data - 5): True
       .1.. .... = RF Channel 7 (2416 MHz - Data - 6): True
       1... .... = RF Channel 8 (2418 MHz - Data - 7): True
       .... ...1 = RF Channel 9 (2420 MHz - Data - 8): True
       .... ..1. = RF Channel 10 (2422 MHz - Data - 9): True
       .... .1.. = RF Channel 11 (2424 MHz - Data - 10): True
       .... 1... = RF Channel 13 (2428 MHz - Data - 11): True
       ...1 .... = RF Channel 14 (2430 MHz - Data - 12): True
       ..1. .... = RF Channel 15 (2432 MHz - Data - 13): True
       .1.. .... = RF Channel 16 (2434 MHz - Data - 14): True
       1... .... = RF Channel 17 (2436 MHz - Data - 15): True
       .... ...1 = RF Channel 18 (2438 MHz - Data - 16): True
       .... ..1. = RF Channel 19 (2440 MHz - Data - 17): True
       .... .1.. = RF Channel 20 (2442 MHz - Data - 18): True
       .... 1... = RF Channel 21 (2444 MHz - Data - 19): True
       ...1 .... = RF Channel 22 (2446 MHz - Data - 20): True
       ..1. .... = RF Channel 23 (2448 MHz - Data - 21): True
       .1.. .... = RF Channel 24 (2450 MHz - Data - 22): True
       1... .... = RF Channel 25 (2452 MHz - Data - 23): True
       .... ...1 = RF Channel 26 (2454 MHz - Data - 24): True
       .... ..1. = RF Channel 27 (2456 MHz - Data - 25): True
       .... .1.. = RF Channel 28 (2458 MHz - Data - 26): True
       .... 1... = RF Channel 29 (2460 MHz - Data - 27): True
       ...1 .... = RF Channel 30 (2462 MHz - Data - 28): True
       ..1. .... = RF Channel 31 (2464 MHz - Data - 29): True
       .1.. .... = RF Channel 32 (2466 MHz - Data - 30): True
       1... .... = RF Channel 33 (2468 MHz - Data - 31): True
       .... ...1 = RF Channel 34 (2470 MHz - Data - 32): True
       .... ..1. = RF Channel 35 (2472 MHz - Data - 33): True
       .... .1.. = RF Channel 36 (2474 MHz - Data - 34): True
       .... 1... = RF Channel 37 (2476 MHz - Data - 35): True
       ...1 .... = RF Channel 38 (2478 MHz - Data - 36): True
       ..0. .... = RF Channel 0 (2402 MHz - Reserved for Advertising - 37): False
       .0.. .... = RF Channel 12 (2426 MHz - Reserved for Advertising - 38): False
       0... .... = RF Channel 39 (2480 MHz - Reserved for Advertising - 39): False
   ```
 - Hop: 9
 - Sleep Clock Accuracy: 31 ppm to 50 ppm (5)

### Iphone:
 - __Bluetooth Low Energy Version Number:__ 4.2 (0x08)
 - __Bluetooth Low Energy Chipset Company ID:__ Broadcom Corporation (0x0f)
 - __Bluetooth Low Energy Subversion nummer:__ 0x6607
 - __Feature Set:__
    ```
    .... ...1 = LE Encryption: True
    .... ..0. = Connection Parameters Request Procedure: False
    .... .1.. = Extended Reject Indication: True
    .... 1... = Slave Initiated Features Exchange: True
    ...1 .... = LE Ping: True
    ..0. .... = LE Data Packet Length Extension: False
    .0.. .... = LL Privacy: False
    0... .... = Extended Scanner Filter Policies: False
    .... ...0 = LE 2M PHY: False
    .... ..0. = Stable Modulation Index - Transmitter: False
    .... .0.. = Stable Modulation Index - Receiver: False
    .... 0... = LE Coded PHY: False
    ...0 .... = LE Extended Advertising: False
    ..0. .... = LE Periodic Advertising: False
    .0.. .... = Channel Selection Algorithm #2: False
    0... .... = LE Power Class 1: False
    .... ...0 = Minimum Number of Used Channels Procedure: False
    ```

### Smart Shaver
 - __Bluetooth Low Energy Version Number:__ 4.1 (0x07)
 - __Bluetooth Low Energy Chipset Company ID:__ Cambridge Silicon Radio (0x0a)
 - __Bluetooth Low Energy Subversion nummer:__ 0x0499
 - Feature Set:
    ```
           .... ...1 = LE Encryption: True
           .... ..0. = Connection Parameters Request Procedure: False
           .... .0.. = Extended Reject Indication: False
           .... 0... = Slave Initiated Features Exchange: False
           ...0 .... = LE Ping: False
           ..0. .... = LE Data Packet Length Extension: False
           .0.. .... = LL Privacy: False
           0... .... = Extended Scanner Filter Policies: False
           .... ...0 = LE 2M PHY: False
           .... ..0. = Stable Modulation Index - Transmitter: False
           .... .0.. = Stable Modulation Index - Receiver: False
           .... 0... = LE Coded PHY: False
           ...0 .... = LE Extended Advertising: False
           ..0. .... = LE Periodic Advertising: False
           .0.. .... = Channel Selection Algorithm #2: False
           0... .... = LE Power Class 1: False
           .... ...0 = Minimum Number of Used Channels Procedure: False
    ```
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

## Videos
- An playlist about almost all Bluetooth Low enery consepts. [link](https://www.youtube.com/watch?v=QBI3zf-MhcA&list=PLSdxNjcHc0u9PdQSd3l3-gDJGzJ_eB50f)

## Sites
1. An list of all uuids [link](https://www.bluetooth.com/specifications/assigned-numbers/16-bit-uuids-for-members)
2. Bluetooth paring process [link](https://blog.bluetooth.com/bluetooth-pairing-part-4)
3. 
## Books
1. Bluetooth Core Specification 4.2 [link](https://www.bluetooth.org/DocMan/handlers/DownloadDoc.ashx?doc_id=286439)
    - Link Layer Info
        - Page 2578, info about the device address.
    - FIDO Authentication [link](https://fidoalliance.org/wp-content/uploads/Bluetooth__NFC_Transport_for_FIDO_U2F.pdf)

