---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.messages.item.replyall.ReplyAllPostRequestBody replyAllPostRequestBody = new com.microsoft.graph.users.item.messages.item.replyall.ReplyAllPostRequestBody();
replyAllPostRequestBody.setComment("comment-value");
graphClient.me().messages().byMessageId("{message-id}").replyAll().post(replyAllPostRequestBody);


```