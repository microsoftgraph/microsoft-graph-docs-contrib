---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.chats.item.hideforuser.HideForUserPostRequestBody hideForUserPostRequestBody = new com.microsoft.graph.beta.chats.item.hideforuser.HideForUserPostRequestBody();
TeamworkUserIdentity user = new TeamworkUserIdentity();
user.setId("d864e79f-a516-4d0f-9fee-0eeb4d61fdc2");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("tenantId", "2a690434-97d9-4eed-83a6-f5f13600199a");
user.setAdditionalData(additionalData);
hideForUserPostRequestBody.setUser(user);
graphClient.chats().byChatId("{chat-id}").hideForUser().post(hideForUserPostRequestBody);


```