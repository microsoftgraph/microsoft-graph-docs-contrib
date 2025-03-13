---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta device-management virtual-endpoint reports export-jobs create --body '{\
  "reportName": "TotalAggregatedRemoteConnectionReports",\
  "select": [\
    "CloudPcId",\
    "ManagedDeviceName",\
    "UserPrincipalName",\
    "DaysSinceLastSignIn",\
    "TotalUsageInHour"\
  ]\
}\
'

```