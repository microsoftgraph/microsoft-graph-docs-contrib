---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.chats.item.markchatunreadforuser.MarkChatUnreadForUserPostRequestBody markChatUnreadForUserPostRequestBody = new com.microsoft.graph.beta.chats.item.markchatunreadforuser.MarkChatUnreadForUserPostRequestBody();
TeamworkUserIdentity user = new TeamworkUserIdentity();
user.setId("d864e79f-a516-4d0f-9fee-0eeb4d61fdc2");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("tenantId", "2a690434-97d9-4eed-83a6-f5f13600199a");
user.setAdditionalData(additionalData);
markChatUnreadForUserPostRequestBody.setUser(user);
OffsetDateTime lastMessageReadDateTime = OffsetDateTime.parse("2021-05-27T22:13:01.577Z");
markChatUnreadForUserPostRequestBody.setLastMessageReadDateTime(lastMessageReadDateTime);
graphClient.chats().byChatId("{chat-id}").markChatUnreadForUser().post(markChatUnreadForUserPostRequestBody);


```