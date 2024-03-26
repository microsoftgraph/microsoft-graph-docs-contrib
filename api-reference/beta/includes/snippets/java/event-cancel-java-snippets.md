---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.events.item.cancel.CancelPostRequestBody cancelPostRequestBody = new com.microsoft.graph.beta.users.item.events.item.cancel.CancelPostRequestBody();
cancelPostRequestBody.setComment("Cancelling for this week due to all hands");
graphClient.me().events().byEventId("{event-id}").cancel().post(cancelPostRequestBody);


```