---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.messages.item.markasjunk.MarkAsJunkPostRequestBody markAsJunkPostRequestBody = new com.microsoft.graph.beta.users.item.messages.item.markasjunk.MarkAsJunkPostRequestBody();
markAsJunkPostRequestBody.setMoveToJunk(true);
var result = graphClient.me().messages().byMessageId("{message-id}").markAsJunk().post(markAsJunkPostRequestBody);


```