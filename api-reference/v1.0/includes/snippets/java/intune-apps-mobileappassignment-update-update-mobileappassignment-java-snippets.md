---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MobileAppAssignment mobileAppAssignment = new MobileAppAssignment();
mobileAppAssignment.setOdataType("#microsoft.graph.mobileAppAssignment");
mobileAppAssignment.setIntent(InstallIntent.Required);
AllLicensedUsersAssignmentTarget target = new AllLicensedUsersAssignmentTarget();
target.setOdataType("microsoft.graph.allLicensedUsersAssignmentTarget");
mobileAppAssignment.setTarget(target);
WindowsUniversalAppXAppAssignmentSettings settings = new WindowsUniversalAppXAppAssignmentSettings();
settings.setOdataType("microsoft.graph.windowsUniversalAppXAppAssignmentSettings");
settings.setUseDeviceContext(true);
mobileAppAssignment.setSettings(settings);
MobileAppAssignment result = graphClient.deviceAppManagement().mobileApps().byMobileAppId("{mobileApp-id}").assignments().byMobileAppAssignmentId("{mobileAppAssignment-id}").patch(mobileAppAssignment);


```