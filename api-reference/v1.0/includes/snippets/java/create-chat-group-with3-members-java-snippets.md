---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Chat chat = new Chat();
chat.setChatType(ChatType.Group);
chat.setTopic("Group chat title");
LinkedList<ConversationMember> members = new LinkedList<ConversationMember>();
AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.setOdataType("#microsoft.graph.aadUserConversationMember");
LinkedList<String> roles = new LinkedList<String>();
roles.add("owner");
conversationMember.setRoles(roles);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("user@odata.bind", "https://graph.microsoft.com/v1.0/users('8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca')");
conversationMember.setAdditionalData(additionalData);
members.add(conversationMember);
AadUserConversationMember conversationMember1 = new AadUserConversationMember();
conversationMember1.setOdataType("#microsoft.graph.aadUserConversationMember");
LinkedList<String> roles1 = new LinkedList<String>();
roles1.add("owner");
conversationMember1.setRoles(roles1);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("user@odata.bind", "https://graph.microsoft.com/v1.0/users('82fe7758-5bb3-4f0d-a43f-e555fd399c6f')");
conversationMember1.setAdditionalData(additionalData1);
members.add(conversationMember1);
AadUserConversationMember conversationMember2 = new AadUserConversationMember();
conversationMember2.setOdataType("#microsoft.graph.aadUserConversationMember");
LinkedList<String> roles2 = new LinkedList<String>();
roles2.add("owner");
conversationMember2.setRoles(roles2);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("user@odata.bind", "https://graph.microsoft.com/v1.0/users('3626a173-f2bc-4883-bcf7-01514c3bfb82')");
conversationMember2.setAdditionalData(additionalData2);
members.add(conversationMember2);
chat.setMembers(members);
Chat result = graphClient.chats().post(chat);


```