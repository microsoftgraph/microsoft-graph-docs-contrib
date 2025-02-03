---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.messages.item.copy.CopyPostRequestBody copyPostRequestBody = new com.microsoft.graph.users.item.messages.item.copy.CopyPostRequestBody();
copyPostRequestBody.setDestinationId("destinationId-value");
var result = graphClient.me().messages().byMessageId("{message-id}").copy().post(copyPostRequestBody);


```