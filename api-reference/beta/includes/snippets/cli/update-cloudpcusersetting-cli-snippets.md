---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta device-management virtual-endpoint user-settings patch --cloud-pc-user-setting-id {cloudPcUserSetting-id} --body '{\
  "@odata.type": "#microsoft.graph.cloudPcUserSetting",\
  "displayName": "Example",\
  "selfServiceEnabled": true,\
  "restorePointSetting": {\
    "frequencyInHours": 16,\
    "frequencyType": "sixteenHours",\
    "userRestoreEnabled": true\
  },\
  "localAdminEnabled": false,\
  "resetEnabled": true\
}\
'

```