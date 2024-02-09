---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.subscribetotone.SubscribeToTonePostRequestBody subscribeToTonePostRequestBody = new com.microsoft.graph.beta.communications.calls.item.subscribetotone.SubscribeToTonePostRequestBody();
subscribeToTonePostRequestBody.setClientContext("fd1c7836-4d84-4e24-b6aa-23188688cc54");
var result = graphClient.communications().calls().byCallId("{call-id}").subscribeToTone().post(subscribeToTonePostRequestBody);


```