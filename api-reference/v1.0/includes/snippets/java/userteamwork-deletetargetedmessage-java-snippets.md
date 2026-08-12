---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.teamwork.deletetargetedmessage.DeleteTargetedMessagePostRequestBody deleteTargetedMessagePostRequestBody = new com.microsoft.graph.users.item.teamwork.deletetargetedmessage.DeleteTargetedMessagePostRequestBody();
deleteTargetedMessagePostRequestBody.setTeamId("9dda0ae1-e007-4a1d-81ec-2cf4b1274610");
deleteTargetedMessagePostRequestBody.setChannelId("19:eeaa4e946d674c4f8d4dded613780f45@thread.v2");
deleteTargetedMessagePostRequestBody.setMessageId("1580849738240");
graphClient.users().byUserId("{user-id}").teamwork().deleteTargetedMessage().post(deleteTargetedMessagePostRequestBody);


```