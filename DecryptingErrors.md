# Errors During Cracking
#### First attempt cracking with Crackle
```
joris@kali:~/Documents/HackenBluetooth/Captures/Joris$ crackle -v -i Capture_05_12_2017.pcapng -o Decrypted_Capture_05_12_2017.pcapng
PCAP contains [PPI] frames
Found 1 connection

Analyzing connection 0:
  55:02:52:bf:5d:20 (random) -> f5:44:08:c4:50:3a (random)
  Found 96 encrypted packets
  Unable to crack due to the following error:
    Missing both Mrand and Srand

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
  AA: af9aa5ad
  IA: 55:02:52:bf:5d:20
  RA: f5:44:08:c4:50:3a
  IAt: 1
  RAt: 1
  Rand: 58 06 70 c2 cf ef a6 3d
  EDIV: 2c 44
  SKDm: c5 fb f6 c4 c6 de 84 c6
  IVm:  89 ce 2e 75
  SKDs: 66 1c 92 1d 0f 97 ce 8c
  IVs:  74 76 34 08

```

#### Using an pcap file produced fom merging all capture files
```
joris@kali:~/Documents/HackenBluetooth/Captures/Joris$ crackle -i all_merged.pcap
Warning: No output file specified. Decrypted packets will be lost to the ether.
Warning: found multiple LL_ENC_REQ, only using latest one
Warning: found multiple LL_ENC_RSP, only using latest one
Warning: packet is too short to be encrypted (1), skipping
Found 3 connections

Analyzing connection 0:
  49:cc:e3:fe:25:b4 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Unable to crack due to the following errors:
    Missing both Mrand and Srand
    Missing LL_ENC_REQ
    Missing LL_ENC_RSP

Analyzing connection 1:
  55:02:52:bf:5d:20 (random) -> f5:44:08:c4:50:3a (random)
  Found 0 encrypted packets
  Unable to crack due to the following errors:
    Missing both Mrand and Srand
    Missing LL_ENC_REQ
    Missing LL_ENC_RSP

Analyzing connection 2:
  55:02:52:bf:5d:20 (random) -> f5:44:08:c4:50:3a (random)
  Found 192 encrypted packets
  Unable to crack due to the following error:
    Missing both Mrand and Srand

Done, processed 0 total packets, decrypted 0

```