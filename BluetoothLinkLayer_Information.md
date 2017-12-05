# Bluetooth Low Energy Link Layer Information

### Link Layer - Device Address

To generate a resolvable private address, the device must have either
the Local Identity Resolving Key (IRK) or the Peer Identity Resolving
Key (IRK). The resolvable private address shall be generated with the
IRK and a randomly generated 24-bit number. The random number is known
as prand and shall meet the following requirements: • The two most
significant bits of prand shall be equal to 0 and 1 as shown in Figure
1.5 • All bits of the random part of prand shall not be equal to 0 • All
bits of the random part of prand shall not be equal to 1 The format of
the resolvable private address is shown in Figure 1.5.


### Link Layer Controll Procedures

| Opcode |        Controll PDU name |                              Description |
|-------:|-------------------------:|-----------------------------------------:|
|   0x00 | LL_CONNECTION_UPDATE_REQ |              Update Connection Intervals |
|   0X01 |       LL_CHANNEL_MAP_REQ |                      Update Channel Maps |
|   0X02 |         LL_TERMINATE_IND |                Disconnect the connection |
|   0X03 |               LL_ENC_REQ |                       Encryption Request |
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

### Connection Link Layer Data
> This is an
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
