---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta device-management virtual-endpoint reports get-inaccessible-cloud-pc-reports post --body '{\
  "filter": "region eq 'westus2'",\
  "orderBy": [\
    "cloudPcId"\
  ],\
  "select": [\
    "cloudPcId",\
    "aadDeviceId",\
    "cloudPcName",\
    "userPrincipalName",\
    "provisioningStatus",\
    "region",\
    "deviceHealthStatus",\
    "deviceHealthStatusDateTime",\
    "recentDeviceHealthFailureCount",\
    "recentConnectionFailureCount",\
    "systemStatus",\
    "systemStatusDateTime"\
  ],\
  "top": 10,\
  "skip": 0\
}\
'

```