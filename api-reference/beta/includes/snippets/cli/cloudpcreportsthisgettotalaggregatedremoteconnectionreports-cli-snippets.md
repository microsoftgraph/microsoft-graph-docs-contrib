---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta device-management virtual-endpoint reports get-total-aggregated-remote-connection-reports post --body '{\
    "top": 25,\
    "skip": 0,\
    "filter": "(TotalUsageInHour ge 40 and TotalUsageInHour le 80)",\
    "select": [\
        "CloudPcId",\
        "ManagedDeviceName",\
        "UserPrincipalName",\
        "TotalUsageInHour",\
        "LastActiveTime",\
        "PcType",\
        "CreatedDate"\
    ]\
}\
'

```