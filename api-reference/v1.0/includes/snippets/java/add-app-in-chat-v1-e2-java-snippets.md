---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsAppInstallation teamsAppInstallation = new TeamsAppInstallation();
TeamsAppPermissionSet consentedPermissionSet = new TeamsAppPermissionSet();
LinkedList<TeamsAppResourceSpecificPermission> resourceSpecificPermissions = new LinkedList<TeamsAppResourceSpecificPermission>();
TeamsAppResourceSpecificPermission teamsAppResourceSpecificPermission = new TeamsAppResourceSpecificPermission();
teamsAppResourceSpecificPermission.setPermissionValue("OnlineMeeting.ReadBasic.Chat");
teamsAppResourceSpecificPermission.setPermissionType(TeamsAppResourceSpecificPermissionType.Delegated);
resourceSpecificPermissions.add(teamsAppResourceSpecificPermission);
TeamsAppResourceSpecificPermission teamsAppResourceSpecificPermission1 = new TeamsAppResourceSpecificPermission();
teamsAppResourceSpecificPermission1.setPermissionValue("OnlineMeetingIncomingAudio.Detect.Chat");
teamsAppResourceSpecificPermission1.setPermissionType(TeamsAppResourceSpecificPermissionType.Delegated);
resourceSpecificPermissions.add(teamsAppResourceSpecificPermission1);
TeamsAppResourceSpecificPermission teamsAppResourceSpecificPermission2 = new TeamsAppResourceSpecificPermission();
teamsAppResourceSpecificPermission2.setPermissionValue("ChatMember.Read.Chat");
teamsAppResourceSpecificPermission2.setPermissionType(TeamsAppResourceSpecificPermissionType.Application);
resourceSpecificPermissions.add(teamsAppResourceSpecificPermission2);
TeamsAppResourceSpecificPermission teamsAppResourceSpecificPermission3 = new TeamsAppResourceSpecificPermission();
teamsAppResourceSpecificPermission3.setPermissionValue("ChatMessage.Read.Chat");
teamsAppResourceSpecificPermission3.setPermissionType(TeamsAppResourceSpecificPermissionType.Application);
resourceSpecificPermissions.add(teamsAppResourceSpecificPermission3);
consentedPermissionSet.setResourceSpecificPermissions(resourceSpecificPermissions);
teamsAppInstallation.setConsentedPermissionSet(consentedPermissionSet);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/2b524e28-95ce-4c9b-9773-4a5bd6ec1770");
teamsAppInstallation.setAdditionalData(additionalData);
TeamsAppInstallation result = graphClient.chats().byChatId("{chat-id}").installedApps().post(teamsAppInstallation);


```