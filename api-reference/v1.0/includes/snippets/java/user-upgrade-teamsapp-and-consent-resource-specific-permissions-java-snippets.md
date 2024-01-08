---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppPermissionSet consentedPermissionSet = new TeamsAppPermissionSet();
LinkedList<TeamsAppResourceSpecificPermission> resourceSpecificPermissionsList = new LinkedList<TeamsAppResourceSpecificPermission>();
TeamsAppResourceSpecificPermission resourceSpecificPermissions = new TeamsAppResourceSpecificPermission();
resourceSpecificPermissions.permissionValue = "TeamsActivity.Send.User";
resourceSpecificPermissions.permissionType = TeamsAppResourceSpecificPermissionType.APPLICATION;
resourceSpecificPermissionsList.add(resourceSpecificPermissions);
consentedPermissionSet.resourceSpecificPermissions = resourceSpecificPermissionsList;

graphClient.users("5b649834-7412-4cce-9e69-176e95a394f5").teamwork().installedApps("NWI2NDk4MzQtNzQxMi00Y2NlLTllNjktMTc2ZTk1YTM5NGY1IyNhNmI2MzM2NS0zMWE0LTRmNDMtOTJlYy03MTBiNzE1NTdhZjk")
	.upgrade(TeamsAppInstallationUpgradeParameterSet
		.newBuilder()
		.withConsentedPermissionSet(consentedPermissionSet)
		.build())
	.buildRequest()
	.post();

```