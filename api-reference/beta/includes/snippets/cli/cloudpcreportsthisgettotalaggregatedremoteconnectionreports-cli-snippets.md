---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta device-management virtual-endpoint reports get-total-aggregated-remote-connection-reports post --body '{\
    "top": 25,\
    "skip": 0,\
    "filter": "(TotalUsageInHour ge 40 and TotalUsageInHour le 80)",\
    "select": [\
        "CloudPcId",\
        "ManagedDeviceName",\
        "UserPrincipalName",\
        "TotalUsageInHour",\
        "DaysSinceLastSignIn"\
    ]\
}\
'

```