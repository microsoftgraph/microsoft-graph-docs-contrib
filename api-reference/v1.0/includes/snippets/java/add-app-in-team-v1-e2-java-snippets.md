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
teamsAppResourceSpecificPermission1.setPermissionValue("ChatMessage.Read.Chat");
teamsAppResourceSpecificPermission1.setPermissionType(TeamsAppResourceSpecificPermissionType.Application);
resourceSpecificPermissions.add(teamsAppResourceSpecificPermission1);
consentedPermissionSet.setResourceSpecificPermissions(resourceSpecificPermissions);
teamsAppInstallation.setConsentedPermissionSet(consentedPermissionSet);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/7023576d-9e40-47ca-9cf2-daae6838e785");
teamsAppInstallation.setAdditionalData(additionalData);
TeamsAppInstallation result = graphClient.teams().byTeamId("{team-id}").installedApps().post(teamsAppInstallation);


```