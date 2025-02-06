---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta device-management virtual-endpoint user-settings patch --cloud-pc-user-setting-id {cloudPcUserSetting-id} --body '{\
  "@odata.type": "#microsoft.graph.cloudPcUserSetting",\
  "displayName": "Example",\
  "selfServiceEnabled": true,\
  "restorePointSetting": {\
    "frequencyInHours": 16,\
    "frequencyType": "sixteenHours",\
    "userRestoreEnabled": true\
  },\
  "crossRegionDisasterRecoverySetting": {\
    "crossRegionDisasterRecoveryEnabled": false,\
    "maintainCrossRegionRestorePointEnabled": true,\
    "disasterRecoveryNetworkSetting": {\
      "regionName": "westus",\
      "regionGroup": "usEast"\
    },\
    "disasterRecoveryType": "premium",\
    "userInitiatedDisasterRecoveryAllowed": true\
  },\
  "localAdminEnabled": false,\
  "resetEnabled": true\
}\
'

```