# Crackle decrypt attempt
#### _Capture_2017_12_08_Arjan_0.pcapng_

#### Tested selection filters:


##### command
```
crackle -i Capture_2017_12_08_Arjan_0.pcapng -v
```
**Output**
```
Warning: No output file specified. Decrypted packets will be lost to the ether.
PCAP contains [EN10MB] frames
Frames inside PCAP file not supported ! dlt_name=EN10MB
Frames format supported:
 [256] BLUETOOTH_LE_LL_WITH_PHDR
 [192] PPI
```
**Clean up filter:**
```
btl2cap || btle || (btle.slave_bd_addr == f5:44:08:c4:50:3a) || (btl2cap.cid in {4 6}) || (btle.advertising_header.pdu_type == 0x5) || (btle.control_opcode) || (btatt || btsmp)
```
09:05:04:01:00:00:00
Payload: 09050401000000
**Output**
```

```