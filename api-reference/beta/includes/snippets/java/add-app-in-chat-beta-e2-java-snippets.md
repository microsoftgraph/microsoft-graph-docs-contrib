---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppInstallation teamsAppInstallation = new TeamsAppInstallation();
teamsAppInstallation.additionalDataManager().put("teamsApp@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/appCatalogs/teamsApps/2b524e28-95ce-4c9b-9773-4a5bd6ec1770"));
TeamsAppPermissionSet consentedPermissionSet = new TeamsAppPermissionSet();
LinkedList<TeamsAppResourceSpecificPermission> resourceSpecificPermissionsList = new LinkedList<TeamsAppResourceSpecificPermission>();
TeamsAppResourceSpecificPermission resourceSpecificPermissions = new TeamsAppResourceSpecificPermission();
resourceSpecificPermissions.permissionValue = "OnlineMeeting.ReadBasic.Chat";
resourceSpecificPermissions.permissionType = TeamsAppResourceSpecificPermissionType.DELEGATED;
resourceSpecificPermissionsList.add(resourceSpecificPermissions);
TeamsAppResourceSpecificPermission resourceSpecificPermissions1 = new TeamsAppResourceSpecificPermission();
resourceSpecificPermissions1.permissionValue = "OnlineMeetingIncomingAudio.Detect.Chat";
resourceSpecificPermissions1.permissionType = TeamsAppResourceSpecificPermissionType.DELEGATED;
resourceSpecificPermissionsList.add(resourceSpecificPermissions1);
TeamsAppResourceSpecificPermission resourceSpecificPermissions2 = new TeamsAppResourceSpecificPermission();
resourceSpecificPermissions2.permissionValue = "ChatMember.Read.Chat";
resourceSpecificPermissions2.permissionType = TeamsAppResourceSpecificPermissionType.APPLICATION;
resourceSpecificPermissionsList.add(resourceSpecificPermissions2);
TeamsAppResourceSpecificPermission resourceSpecificPermissions3 = new TeamsAppResourceSpecificPermission();
resourceSpecificPermissions3.permissionValue = "ChatMessage.Read.Chat";
resourceSpecificPermissions3.permissionType = TeamsAppResourceSpecificPermissionType.APPLICATION;
resourceSpecificPermissionsList.add(resourceSpecificPermissions3);
consentedPermissionSet.resourceSpecificPermissions = resourceSpecificPermissionsList;
teamsAppInstallation.consentedPermissionSet = consentedPermissionSet;

graphClient.chats("19:ea28e88c00e94c7786b065394a61f296@thread.v2").installedApps()
	.buildRequest()
	.post(teamsAppInstallation);

```