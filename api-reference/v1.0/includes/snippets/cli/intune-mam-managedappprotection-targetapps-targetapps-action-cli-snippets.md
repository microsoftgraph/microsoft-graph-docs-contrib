---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc device-app-management managed-app-policies target-apps post --managed-app-policy-id {managedAppPolicy-id} --body '{\
  "apps": [\
    {\
      "@odata.type": "#microsoft.graph.managedMobileApp",\
      "mobileAppIdentifier": {\
        "@odata.type": "microsoft.graph.androidMobileAppIdentifier",\
        "packageId": "Package Id value"\
      },\
      "id": "0a129715-9715-0a12-1597-120a1597120a",\
      "version": "Version value"\
    }\
  ]\
}\
'

```