---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-app-management targeted-managed-app-configurations target-apps post --targeted-managed-app-configuration-id {targetedManagedAppConfiguration-id} --body '{\
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
  ],\
  "appGroupType": "allCoreMicrosoftApps"\
}\
'

```