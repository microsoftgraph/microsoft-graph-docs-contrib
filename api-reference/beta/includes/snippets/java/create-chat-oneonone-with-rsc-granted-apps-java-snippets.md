---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Chat chat = new Chat();
chat.setChatType(ChatType.OneOnOne);
LinkedList<ConversationMember> members = new LinkedList<ConversationMember>();
AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.setOdataType("#microsoft.graph.aadUserConversationMember");
LinkedList<String> roles = new LinkedList<String>();
roles.add("owner");
conversationMember.setRoles(roles);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("user@odata.bind", "https://graph.microsoft.com/beta/users('4b822dfc-2864-44e6-aa1e-7e0e8552168f')");
conversationMember.setAdditionalData(additionalData);
members.add(conversationMember);
AadUserConversationMember conversationMember1 = new AadUserConversationMember();
conversationMember1.setOdataType("#microsoft.graph.aadUserConversationMember");
LinkedList<String> roles1 = new LinkedList<String>();
roles1.add("owner");
conversationMember1.setRoles(roles1);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("user@odata.bind", "https://graph.microsoft.com/beta/users('6d1e1501-7a3d-45b7-b71b-68d372e5ce14')");
conversationMember1.setAdditionalData(additionalData1);
members.add(conversationMember1);
chat.setMembers(members);
LinkedList<TeamsAppInstallation> installedApps = new LinkedList<TeamsAppInstallation>();
TeamsAppInstallation teamsAppInstallation = new TeamsAppInstallation();
TeamsAppPermissionSet consentedPermissionSet = new TeamsAppPermissionSet();
LinkedList<TeamsAppResourceSpecificPermission> resourceSpecificPermissions = new LinkedList<TeamsAppResourceSpecificPermission>();
TeamsAppResourceSpecificPermission teamsAppResourceSpecificPermission = new TeamsAppResourceSpecificPermission();
teamsAppResourceSpecificPermission.setPermissionValue("ChatMessage.Read.Chat");
teamsAppResourceSpecificPermission.setPermissionType(TeamsAppResourceSpecificPermissionType.Application);
resourceSpecificPermissions.add(teamsAppResourceSpecificPermission);
TeamsAppResourceSpecificPermission teamsAppResourceSpecificPermission1 = new TeamsAppResourceSpecificPermission();
teamsAppResourceSpecificPermission1.setPermissionValue("OnlineMeeting.ReadBasic.Chat");
teamsAppResourceSpecificPermission1.setPermissionType(TeamsAppResourceSpecificPermissionType.Application);
resourceSpecificPermissions.add(teamsAppResourceSpecificPermission1);
consentedPermissionSet.setResourceSpecificPermissions(resourceSpecificPermissions);
teamsAppInstallation.setConsentedPermissionSet(consentedPermissionSet);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("teamsApp@odata.bind", "https://graph.microsoft.com/beta/appCatalogs/teamsApps/8e55a7b1-6766-4f0a-8610-ecacfe3d569a");
teamsAppInstallation.setAdditionalData(additionalData2);
installedApps.add(teamsAppInstallation);
chat.setInstalledApps(installedApps);
Chat result = graphClient.chats().post(chat);


```