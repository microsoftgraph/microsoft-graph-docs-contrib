---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta device-management virtual-endpoint reports get-cloud-pc-performance-report post --body '{\
  "reportName": "performanceTrendReport",\
  "filter": "EventDateTime gt datetime'2023-10-13T00:00:00.000Z'",\
  "select": [\
    "EventDateTime",\
    "SlowRoundTripTimeCloudPcCount",\
    "LowUdpConnectionPercentageCount",\
    "NoActiveTimeConnectedCount",\
    "LowActiveTimeConnectedCount"\
  ],\
  "search": "",\
  "skip": 0,\
  "top": 50\
}\
'

```