---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-app-management ios-managed-app-protections deployment-summary patch --ios-managed-app-protection-id {iosManagedAppProtection-id} --body '{\
  "@odata.type": "#microsoft.graph.managedAppPolicyDeploymentSummary",\
  "displayName": "Display Name value",\
  "configurationDeployedUserCount": 14,\
  "lastRefreshTime": "2017-01-01T00:01:30.1240368-08:00",\
  "configurationDeploymentSummaryPerApp": [\
    {\
      "@odata.type": "microsoft.graph.managedAppPolicyDeploymentSummaryPerApp",\
      "mobileAppIdentifier": {\
        "@odata.type": "microsoft.graph.androidMobileAppIdentifier",\
        "packageId": "Package Id value"\
      },\
      "configurationAppliedUserCount": 13\
    }\
  ],\
  "version": "Version value"\
}\
'

```