---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppPermissionSet consentedPermissionSet = new TeamsAppPermissionSet();
LinkedList<TeamsAppResourceSpecificPermission> resourceSpecificPermissionsList = new LinkedList<TeamsAppResourceSpecificPermission>();
TeamsAppResourceSpecificPermission resourceSpecificPermissions = new TeamsAppResourceSpecificPermission();
resourceSpecificPermissions.permissionValue = "OnlineMeeting.ReadBasic.Chat";
resourceSpecificPermissions.permissionType = TeamsAppResourceSpecificPermissionType.DELEGATED;
resourceSpecificPermissionsList.add(resourceSpecificPermissions);
TeamsAppResourceSpecificPermission resourceSpecificPermissions1 = new TeamsAppResourceSpecificPermission();
resourceSpecificPermissions1.permissionValue = "ChatMember.Read.Chat";
resourceSpecificPermissions1.permissionType = TeamsAppResourceSpecificPermissionType.APPLICATION;
resourceSpecificPermissionsList.add(resourceSpecificPermissions1);
consentedPermissionSet.resourceSpecificPermissions = resourceSpecificPermissionsList;

graphClient.chats("19:ea28e88c00e94c7786b065394a61f296@thread.v2").installedApps("NjRiOWM3NDYtYjE1NS00MDQyLThkNDctOTQxYmQzODE2ODFiIyMwZDgyMGVjZC1kZWYyLTQyOTctYWRhZC03ODA1NmNkZTdjNzg=")
	.upgrade(TeamsAppInstallationUpgradeParameterSet
		.newBuilder()
		.withConsentedPermissionSet(consentedPermissionSet)
		.build())
	.buildRequest()
	.post();

```