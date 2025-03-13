---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.setOdataType("#microsoft.graph.aadUserConversationMember");
LinkedList<String> roles = new LinkedList<String>();
roles.add("owner");
conversationMember.setRoles(roles);
conversationMember.setTenantId("4dc1fe35-8ac6-4f0d-904a-7ebcd364bea1");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("user@odata.bind", "https://graph.microsoft.com/beta/users/82af01c5-f7cc-4a2e-a728-3a5df21afd9d");
conversationMember.setAdditionalData(additionalData);
ConversationMember result = graphClient.chats().byChatId("{chat-id}").members().post(conversationMember);


```