---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta device-management virtual-endpoint user-settings create --body '{\
  "@odata.type": "#microsoft.graph.cloudPcUserSetting",\
  "displayName": "Example",\
  "selfServiceEnabled": false,\
  "localAdminEnabled": true,\
  "restorePointSetting": {\
    "frequencyInHours": 16,\
    "frequencyType": "sixteenHours",\
    "userRestoreEnabled": true\
  }\
}\
'

```