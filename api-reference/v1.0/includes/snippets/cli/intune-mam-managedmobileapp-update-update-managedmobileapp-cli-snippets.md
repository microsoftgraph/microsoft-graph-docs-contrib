---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-app-management ios-managed-app-protections apps patch --ios-managed-app-protection-id {iosManagedAppProtection-id} --managed-mobile-app-id {managedMobileApp-id} --body '{\
  "@odata.type": "#microsoft.graph.managedMobileApp",\
  "mobileAppIdentifier": {\
    "@odata.type": "microsoft.graph.androidMobileAppIdentifier",\
    "packageId": "Package Id value"\
  },\
  "version": "Version value"\
}\
'

```