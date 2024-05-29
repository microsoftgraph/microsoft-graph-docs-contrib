---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.chats.item.removeallaccessforuser.RemoveAllAccessForUserPostRequestBody removeAllAccessForUserPostRequestBody = new com.microsoft.graph.beta.chats.item.removeallaccessforuser.RemoveAllAccessForUserPostRequestBody();
TeamworkUserIdentity user = new TeamworkUserIdentity();
user.setOdataType("microsoft.graph.teamworkUserIdentity");
removeAllAccessForUserPostRequestBody.setUser(user);
graphClient.chats().byChatId("{chat-id}").removeAllAccessForUser().post(removeAllAccessForUserPostRequestBody);


```