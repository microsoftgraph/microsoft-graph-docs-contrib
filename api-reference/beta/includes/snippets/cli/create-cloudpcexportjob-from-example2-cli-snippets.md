---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta device-management virtual-endpoint reports export-jobs create --body '{\
  "reportName": "RemoteConnectionQualityReports",\
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
  "filter": "EventDateTime gt datetime'2023-06-14T07:40:41.694Z'"\
}\
'

```