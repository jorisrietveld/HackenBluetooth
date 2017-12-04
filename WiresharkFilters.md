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
|                                                eth.src == f5:44:08:c4:50:3a      |                                                                           |         |

