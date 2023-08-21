---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-app-management mobile-apps assignments patch --mobile-app-id {mobileApp-id} --mobile-app-assignment-id {mobileAppAssignment-id} --body '{\
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