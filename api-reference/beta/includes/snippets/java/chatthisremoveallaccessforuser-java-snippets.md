---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.chats.item.removeallaccessforuser.RemoveAllAccessForUserPostRequestBody removeAllAccessForUserPostRequestBody = new com.microsoft.graph.beta.chats.item.removeallaccessforuser.RemoveAllAccessForUserPostRequestBody();
TeamworkUserIdentity user = new TeamworkUserIdentity();
user.setOdataType("microsoft.graph.teamworkUserIdentity");
user.setId("f47ac10b-58cc-4372-a567-0e02b2c3d479");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("tenantId", "a1b2c3d4-e5f6-7890-1234-567890abcdef");
user.setAdditionalData(additionalData);
removeAllAccessForUserPostRequestBody.setUser(user);
graphClient.chats().byChatId("{chat-id}").removeAllAccessForUser().post(removeAllAccessForUserPostRequestBody);


```