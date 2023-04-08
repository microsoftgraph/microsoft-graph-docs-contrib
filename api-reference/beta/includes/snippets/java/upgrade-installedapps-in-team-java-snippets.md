---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppPermissionSet consentedPermissionSet = new TeamsAppPermissionSet();
LinkedList<TeamsAppResourceSpecificPermission> resourceSpecificPermissionsList = new LinkedList<TeamsAppResourceSpecificPermission>();
TeamsAppResourceSpecificPermission resourceSpecificPermissions = new TeamsAppResourceSpecificPermission();
resourceSpecificPermissions.permissionValue = "Channel.Create.Group";
resourceSpecificPermissions.permissionType = TeamsAppResourceSpecificPermissionType.APPLICATION;
resourceSpecificPermissionsList.add(resourceSpecificPermissions);
TeamsAppResourceSpecificPermission resourceSpecificPermissions1 = new TeamsAppResourceSpecificPermission();
resourceSpecificPermissions1.permissionValue = "ChannelMeeting.ReadBasic.Group";
resourceSpecificPermissions1.permissionType = TeamsAppResourceSpecificPermissionType.DELEGATED;
resourceSpecificPermissionsList.add(resourceSpecificPermissions1);
consentedPermissionSet.resourceSpecificPermissions = resourceSpecificPermissionsList;

graphClient.teams("20988f0f-a647-42f6-be30-79e04de3c2ed").installedApps("MjA5ODhmMGYtYTY0Ny00MmY2LWJlMzAtNzllMDRkZTNjMmVkIyNmYTkzN2Y4OS1iYWNhLTQ5NzktYmY4YS00MmY5ODE5MWY3ODA=")
	.upgrade(TeamsAppInstallationUpgradeParameterSet
		.newBuilder()
		.withConsentedPermissionSet(consentedPermissionSet)
		.build())
	.buildRequest()
	.post();

```