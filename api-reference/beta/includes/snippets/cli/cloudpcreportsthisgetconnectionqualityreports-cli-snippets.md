---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
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
    "EventDateTime"\
  ],\
  "skip": "0",\
  "top": "25",\
  "orderBy": []\
}\
'

```