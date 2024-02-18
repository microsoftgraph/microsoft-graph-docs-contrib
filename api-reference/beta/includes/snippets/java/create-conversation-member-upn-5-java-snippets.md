---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.setOdataType("#microsoft.graph.aadUserConversationMember");
OffsetDateTime visibleHistoryStartDateTime = OffsetDateTime.parse("2019-04-18T23:51:43.255Z");
conversationMember.setVisibleHistoryStartDateTime(visibleHistoryStartDateTime);
LinkedList<String> roles = new LinkedList<String>();
roles.add("owner");
conversationMember.setRoles(roles);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("user@odata.bind", "https://graph.microsoft.com/beta/users/jacob@contoso.com");
conversationMember.setAdditionalData(additionalData);
ConversationMember result = graphClient.chats().byChatId("{chat-id}").members().post(conversationMember);


```