# Crackle decrypt attempt
#### _Capture_2017_12_08_Arjan_1.pcapng_


##### command
```
crackle -i Capture_2017_12_08_Arjan_1.pcapng -v
```
**Output**
```
PCAP contains [PPI] frames
Found 1 connection

Analyzing connection 0:
  Found 0 encrypted packets
  Unable to crack due to the following errors:
    CONNECT_REQ not found
    Missing both Mrand and Srand
    Missing LL_ENC_REQ
    Missing LL_ENC_RSP

Did not decrypt any packets, not writing a new PCAP
Done, processed 0 total packets, decrypted 0
Connection 0
  connect_found: 0
  preq_found: 0
  pres_found: 0
  confirm_found: 0
  random_found: 0
  enc_req_found: 0
  enc_rsp_found: 0
  pairing_public_key_found: 0
  pairing_dhkey_check_found: 0
```
