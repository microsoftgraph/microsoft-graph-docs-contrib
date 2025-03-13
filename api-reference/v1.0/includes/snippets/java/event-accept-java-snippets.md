---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.events.item.accept.AcceptPostRequestBody acceptPostRequestBody = new com.microsoft.graph.users.item.events.item.accept.AcceptPostRequestBody();
acceptPostRequestBody.setComment("comment-value");
acceptPostRequestBody.setSendResponse(true);
graphClient.me().events().byEventId("{event-id}").accept().post(acceptPostRequestBody);


```