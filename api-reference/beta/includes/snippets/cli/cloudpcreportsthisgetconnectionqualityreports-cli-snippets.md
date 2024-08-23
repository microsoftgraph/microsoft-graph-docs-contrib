---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta device-management virtual-endpoint reports get-connection-quality-reports post --body '{\
  "filter": "EventDateTime gt datetime'2023-04-16T07:40:41.694Z'",\
  "search": "",\
  "select": [\
    "CloudPcId",\
    "ManagedDeviceName",\
    "AvgRoundTripTimeInMsP50",\
    "LastConnectionRoundTripTimeInMs",\
    "AvgAvailableBandwidthInMBpsP50",\
    "LastConnectionAvailableBandWidthInMSps",\
    "AvgRemoteSignInTimeInSecP50",\
    "UDPConnectionPercentage",\
    "LastConnectionGateway",\
    "LastConnectionProtocol",\
    "LastActiveTime"\
  ],\
  "skip": "0",\
  "top": "25",\
  "orderBy": []\
}\
'

```