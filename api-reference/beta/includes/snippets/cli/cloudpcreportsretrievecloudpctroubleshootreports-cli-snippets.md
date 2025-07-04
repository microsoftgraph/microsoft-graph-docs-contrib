---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta device-management virtual-endpoint reports retrieve-cloud-pc-troubleshoot-reports post --body '{\
  "reportName": "troubleshootDetailsReport",\
  "select": [\
    "CloudPcId",\
    "ManagedDeviceName",\
    "UserPrincipalName",\
    "UsageInsight",\
    "CurrentSize",\
    "CurrentCPU",\
    "CurrentRamInGB",\
    "CurrentDiskInGB",\
    "RecommendedSize",\
    "RecommendedCPU",\
    "RecommendedRamInGB",\
    "RecommendedDiskInGB",\
    "ProvisionPolicyName",\
    "RoundTripTimeInMsAvg",\
    "AvailableBandwidthInMbpsAvg"\
  ],\
  "search": "",\
  "skip": 0,\
  "top": 50\
}\
'

```