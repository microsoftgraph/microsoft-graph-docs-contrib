---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.chats.item.installedapps.item.upgrade.UpgradePostRequestBody upgradePostRequestBody = new com.microsoft.graph.beta.chats.item.installedapps.item.upgrade.UpgradePostRequestBody();
TeamsAppPermissionSet consentedPermissionSet = new TeamsAppPermissionSet();
LinkedList<TeamsAppResourceSpecificPermission> resourceSpecificPermissions = new LinkedList<TeamsAppResourceSpecificPermission>();
TeamsAppResourceSpecificPermission teamsAppResourceSpecificPermission = new TeamsAppResourceSpecificPermission();
teamsAppResourceSpecificPermission.setPermissionValue("OnlineMeeting.ReadBasic.Chat");
teamsAppResourceSpecificPermission.setPermissionType(TeamsAppResourceSpecificPermissionType.Delegated);
resourceSpecificPermissions.add(teamsAppResourceSpecificPermission);
TeamsAppResourceSpecificPermission teamsAppResourceSpecificPermission1 = new TeamsAppResourceSpecificPermission();
teamsAppResourceSpecificPermission1.setPermissionValue("ChatMember.Read.Chat");
teamsAppResourceSpecificPermission1.setPermissionType(TeamsAppResourceSpecificPermissionType.Application);
resourceSpecificPermissions.add(teamsAppResourceSpecificPermission1);
consentedPermissionSet.setResourceSpecificPermissions(resourceSpecificPermissions);
upgradePostRequestBody.setConsentedPermissionSet(consentedPermissionSet);
graphClient.chats().byChatId("{chat-id}").installedApps().byTeamsAppInstallationId("{teamsAppInstallation-id}").upgrade().post(upgradePostRequestBody);


```