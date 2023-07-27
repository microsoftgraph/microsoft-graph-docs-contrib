---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileAppAssignment mobileAppAssignment = new MobileAppAssignment();
mobileAppAssignment.intent = InstallIntent.REQUIRED;
AllLicensedUsersAssignmentTarget target = new AllLicensedUsersAssignmentTarget();
mobileAppAssignment.target = target;
WindowsUniversalAppXAppAssignmentSettings settings = new WindowsUniversalAppXAppAssignmentSettings();
settings.useDeviceContext = true;
mobileAppAssignment.settings = settings;

graphClient.deviceAppManagement().mobileApps("{mobileAppId}").assignments("{mobileAppAssignmentId}")
	.buildRequest()
	.patch(mobileAppAssignment);

```