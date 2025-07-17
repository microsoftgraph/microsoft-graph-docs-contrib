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
additionalData.put("user@odata.bind", "https://graph.microsoft.com/v1.0/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')");
conversationMember.setAdditionalData(additionalData);
members.add(conversationMember);
AadUserConversationMember conversationMember1 = new AadUserConversationMember();
conversationMember1.setOdataType("#microsoft.graph.aadUserConversationMember");
LinkedList<String> roles1 = new LinkedList<String>();
roles1.add("owner");
conversationMember1.setRoles(roles1);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("user@odata.bind", "https://graph.microsoft.com/v1.0/users('82af01c5-f7cc-4a2e-a728-3a5df21afd9d')");
conversationMember1.setAdditionalData(additionalData1);
members.add(conversationMember1);
chat.setMembers(members);
LinkedList<TeamsAppInstallation> installedApps = new LinkedList<TeamsAppInstallation>();
TeamsAppInstallation teamsAppInstallation = new TeamsAppInstallation();
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/05F59CEC-A742-4A50-A62E-202A57E478A4");
teamsAppInstallation.setAdditionalData(additionalData2);
installedApps.add(teamsAppInstallation);
chat.setInstalledApps(installedApps);
Chat result = graphClient.chats().post(chat);


```