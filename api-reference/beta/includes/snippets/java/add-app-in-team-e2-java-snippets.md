---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppInstallation teamsAppInstallation = new TeamsAppInstallation();
teamsAppInstallation.additionalDataManager().put("teamsApp@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/appCatalogs/teamsApps/7023576d-9e40-47ca-9cf2-daae6838e785"));
TeamsAppPermissionSet consentedPermissionSet = new TeamsAppPermissionSet();
LinkedList<TeamsAppResourceSpecificPermission> resourceSpecificPermissionsList = new LinkedList<TeamsAppResourceSpecificPermission>();
TeamsAppResourceSpecificPermission resourceSpecificPermissions = new TeamsAppResourceSpecificPermission();
resourceSpecificPermissions.permissionValue = "OnlineMeeting.ReadBasic.Chat";
resourceSpecificPermissions.permissionType = TeamsAppResourceSpecificPermissionType.DELEGATED;
resourceSpecificPermissionsList.add(resourceSpecificPermissions);
TeamsAppResourceSpecificPermission resourceSpecificPermissions1 = new TeamsAppResourceSpecificPermission();
resourceSpecificPermissions1.permissionValue = "ChatMessage.Read.Chat";
resourceSpecificPermissions1.permissionType = TeamsAppResourceSpecificPermissionType.APPLICATION;
resourceSpecificPermissionsList.add(resourceSpecificPermissions1);
consentedPermissionSet.resourceSpecificPermissions = resourceSpecificPermissionsList;
teamsAppInstallation.consentedPermissionSet = consentedPermissionSet;

graphClient.teams("7023576d-9e40-47ca-9cf2-daae6838e785").installedApps()
	.buildRequest()
	.post(teamsAppInstallation);

```