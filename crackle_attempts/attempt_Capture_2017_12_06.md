# Crackle decrypt attempt
#### _Capture_2017_12_06.pcapng_

#### Tested selection filters:
- frame.number >= 22473


##### command
```
crackle -i Capture_2017_12_06.pcapng -o decrypted.pcap 
```
**Output**
```
Found 4 connections

Analyzing connection 0:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 385 encrypted packets
  Unable to crack due to the following error:
    Missing both Mrand and Srand

Analyzing connection 1:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Unable to crack due to the following errors:
    Missing both Mrand and Srand
    Missing LL_ENC_REQ
    Missing LL_ENC_RSP

Analyzing connection 2:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Unable to crack due to the following errors:
    Missing both Mrand and Srand
    Missing LL_ENC_REQ
    Missing LL_ENC_RSP

Analyzing connection 3:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Cracking with strategy 2, slow STK brute force
    TK is not found. The connection could be using OOB pairing or something
    else fishy is going on. File a bug with more info about the devices.
    Sorry d00d :(

Did not decrypt any packets, not writing a new PCAP
Done, processed 0 total packets, decrypted 0

```
**Output Verbose**
```
PCAP contains [PPI] frames
Found 4 connections

Analyzing connection 0:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 385 encrypted packets
  Unable to crack due to the following error:
    Missing both Mrand and Srand

Analyzing connection 1:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Unable to crack due to the following errors:
    Missing both Mrand and Srand
    Missing LL_ENC_REQ
    Missing LL_ENC_RSP

Analyzing connection 2:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Unable to crack due to the following errors:
    Missing both Mrand and Srand
    Missing LL_ENC_REQ
    Missing LL_ENC_RSP

Analyzing connection 3:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Cracking with strategy 2, slow STK brute force
  Trying TK: 000000
  _Edited by joris - removed bruteforce keys between__
  Trying TK: 999000
    TK is not found. The connection could be using OOB pairing or something
    else fishy is going on. File a bug with more info about the devices.
    Sorry d00d :(

Did not decrypt any packets, not writing a new PCAP
Done, processed 0 total packets, decrypted 0
Connection 0
  connect_found: 1
  preq_found: 0
  pres_found: 0
  confirm_found: 0
  random_found: 0
  enc_req_found: 1
  enc_rsp_found: 1
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: af9a8c9e
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  Rand: 58 06 70 c2 cf ef a6 3d
  EDIV: 2c 44
  SKDm: 03 ba a3 b2 e8 13 d4 be
  IVm:  79 85 82 21
  SKDs: 22 0d f8 60 cb b3 19 a0
  IVs:  e1 9c e6 94
Connection 1
  connect_found: 1
  preq_found: 1
  pres_found: 0
  confirm_found: 0
  random_found: 0
  enc_req_found: 0
  enc_rsp_found: 0
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: 50654a22
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  PREQ: 03 03 10 2d 00 04 01
Connection 2
  connect_found: 1
  preq_found: 1
  pres_found: 0
  confirm_found: 0
  random_found: 0
  enc_req_found: 0
  enc_rsp_found: 0
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: 50656d21
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  PREQ: 03 03 10 2d 00 04 01
Connection 3
  connect_found: 1
  preq_found: 1
  pres_found: 0
  confirm_found: 2
  random_found: 2
  enc_req_found: 1
  enc_rsp_found: 1
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: 50654bdb
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  PREQ: 03 03 10 2d 00 04 01
  MCONFIRM: d0 51 dd 06 4a 9e 48 c5 32 84 79 fa f3 59 97 7b
  SCONFIRM: 43 6b 78 83 64 e2 bf a1 ba a0 66 5d 0d b0 e0 ce
  MRAND: f4 59 52 c6 f8 1c 92 8b 5f f5 63 60 58 4e ca ef
  SRAND: 92 78 44 8f 26 68 73 06 17 84 d2 ae 5e 42 1b e9
  Rand: 00 00 00 00 00 00 00 00
  EDIV: 00 00
  SKDm: 07 fe 80 2d 3e c1 6e 3f
  IVm:  4b 98 51 a5
  SKDs: ab 7f d8 fd 9e 06 88 22
  IVs:  ef e8 a4 4f


```

**Using values foud:**
```
crackle -i Capture_2017_12_06.pcapng -l efca4e586063f55f8b921cf8c65259f4 -v -o decrypted.pcap
```
**result:**
```
PCAP contains [PPI] frames
Found 4 connections

Analyzing connection 0:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 385 encrypted packets
  Decrypted 0 packets

Analyzing connection 1:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Unable to decrypt due to the following errors:
    Missing LL_ENC_REQ
    Missing LL_ENC_RSP

Analyzing connection 2:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Unable to decrypt due to the following errors:
    Missing LL_ENC_REQ
    Missing LL_ENC_RSP

Analyzing connection 3:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Decrypted 0 packets

Did not decrypt any packets, not writing a new PCAP
Done, processed 0 total packets, decrypted 0
Connection 0
  connect_found: 1
  preq_found: 0
  pres_found: 0
  confirm_found: 0
  random_found: 0
  enc_req_found: 1
  enc_rsp_found: 1
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: af9a8c9e
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  Rand: 58 06 70 c2 cf ef a6 3d
  EDIV: 2c 44
  SKDm: 03 ba a3 b2 e8 13 d4 be
  IVm:  79 85 82 21
  SKDs: 22 0d f8 60 cb b3 19 a0
  IVs:  e1 9c e6 94
Connection 1
  connect_found: 1
  preq_found: 1
  pres_found: 0
  confirm_found: 0
  random_found: 0
  enc_req_found: 0
  enc_rsp_found: 0
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: 50654a22
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  PREQ: 03 03 10 2d 00 04 01
Connection 2
  connect_found: 1
  preq_found: 1
  pres_found: 0
  confirm_found: 0
  random_found: 0
  enc_req_found: 0
  enc_rsp_found: 0
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: 50656d21
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  PREQ: 03 03 10 2d 00 04 01
Connection 3
  connect_found: 1
  preq_found: 1
  pres_found: 0
  confirm_found: 2
  random_found: 2
  enc_req_found: 1
  enc_rsp_found: 1
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: 50654bdb
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  PREQ: 03 03 10 2d 00 04 01
  MCONFIRM: d0 51 dd 06 4a 9e 48 c5 32 84 79 fa f3 59 97 7b
  SCONFIRM: 43 6b 78 83 64 e2 bf a1 ba a0 66 5d 0d b0 e0 ce
  MRAND: f4 59 52 c6 f8 1c 92 8b 5f f5 63 60 58 4e ca ef
  SRAND: 92 78 44 8f 26 68 73 06 17 84 d2 ae 5e 42 1b e9
  Rand: 00 00 00 00 00 00 00 00
  EDIV: 00 00
  SKDm: 07 fe 80 2d 3e c1 6e 3f
  IVm:  4b 98 51 a5
  SKDs: ab 7f d8 fd 9e 06 88 22
  IVs:  ef e8 a4 4f
```


**Using values foud:**
```
crackle -i Capture_2017_12_06.pcapng -l e91b425eaed28417067368268f447892 -v -o decrypted.pcap
```
**result:**
```
PCAP contains [PPI] frames
Found 4 connections

Analyzing connection 0:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 385 encrypted packets
  Decrypted 0 packets

Analyzing connection 1:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Unable to decrypt due to the following errors:
    Missing LL_ENC_REQ
    Missing LL_ENC_RSP

Analyzing connection 2:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Unable to decrypt due to the following errors:
    Missing LL_ENC_REQ
    Missing LL_ENC_RSP

Analyzing connection 3:
  5c:6a:6d:2e:80:39 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Decrypted 0 packets

Did not decrypt any packets, not writing a new PCAP
Done, processed 0 total packets, decrypted 0
Connection 0
  connect_found: 1
  preq_found: 0
  pres_found: 0
  confirm_found: 0
  random_found: 0
  enc_req_found: 1
  enc_rsp_found: 1
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: af9a8c9e
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  Rand: 58 06 70 c2 cf ef a6 3d
  EDIV: 2c 44
  SKDm: 03 ba a3 b2 e8 13 d4 be
  IVm:  79 85 82 21
  SKDs: 22 0d f8 60 cb b3 19 a0
  IVs:  e1 9c e6 94
Connection 1
  connect_found: 1
  preq_found: 1
  pres_found: 0
  confirm_found: 0
  random_found: 0
  enc_req_found: 0
  enc_rsp_found: 0
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: 50654a22
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  PREQ: 03 03 10 2d 00 04 01
Connection 2
  connect_found: 1
  preq_found: 1
  pres_found: 0
  confirm_found: 0
  random_found: 0
  enc_req_found: 0
  enc_rsp_found: 0
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: 50656d21
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  PREQ: 03 03 10 2d 00 04 01
Connection 3
  connect_found: 1
  preq_found: 1
  pres_found: 0
  confirm_found: 2
  random_found: 2
  enc_req_found: 1
  enc_rsp_found: 1
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
  AA: 50654bdb
  IA: 5c:6a:6d:2e:80:39
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  PREQ: 03 03 10 2d 00 04 01
  MCONFIRM: d0 51 dd 06 4a 9e 48 c5 32 84 79 fa f3 59 97 7b
  SCONFIRM: 43 6b 78 83 64 e2 bf a1 ba a0 66 5d 0d b0 e0 ce
  MRAND: f4 59 52 c6 f8 1c 92 8b 5f f5 63 60 58 4e ca ef
  SRAND: 92 78 44 8f 26 68 73 06 17 84 d2 ae 5e 42 1b e9
  Rand: 00 00 00 00 00 00 00 00
  EDIV: 00 00
  SKDm: 07 fe 80 2d 3e c1 6e 3f
  IVm:  4b 98 51 a5
  SKDs: ab 7f d8 fd 9e 06 88 22
  IVs:  ef e8 a4 4f
```

Confirm Value: 7b9759f3fa798432c5489e4a06dd51d0
Confirm Value: cee0b00d5d66a0baa1bfe26483786b43
Random Value: efca4e586063f55f8b921cf8c65259f4
Random Value: e91b425eaed28417067368268f447892