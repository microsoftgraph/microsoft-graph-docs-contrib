---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta device-management virtual-endpoint reports retrieve-cross-region-disaster-recovery-report post --body '{\
  "filter": "DisasterRecoveryStatus eq 'Active outage'",\
  "select": [\
    "Id",\
    "CloudPcId",\
    "UserId",\
    "UserSettingId",\
    "DeviceId",\
    "CloudPCDeviceDisplayName",\
    "UserPrincipalName",\
    "IsCrossRegionEnabled",\
    "CrossRegionHealthStatus",\
    "LicenseType",\
    "DisasterRecoveryStatus",\
    "CurrentRestorePointDateTime",\
    "ActivationExpirationDateTime"\
  ],\
  "skip": 0,\
  "top": 50\
}\
'

```