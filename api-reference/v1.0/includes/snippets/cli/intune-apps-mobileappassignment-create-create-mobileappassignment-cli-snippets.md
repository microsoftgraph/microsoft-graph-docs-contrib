---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-app-management mobile-apps assignments create --mobile-app-id {mobileApp-id} --body '{\
  "@odata.type": "#microsoft.graph.mobileAppAssignment",\
  "intent": "required",\
  "target": {\
    "@odata.type": "microsoft.graph.allLicensedUsersAssignmentTarget"\
  },\
  "settings": {\
    "@odata.type": "microsoft.graph.windowsUniversalAppXAppAssignmentSettings",\
    "useDeviceContext": true\
  }\
}\
'

```