---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.mute.MutePostRequestBody mutePostRequestBody = new com.microsoft.graph.communications.calls.item.mute.MutePostRequestBody();
mutePostRequestBody.setClientContext("clientContext-value");
var result = graphClient.communications().calls().byCallId("{call-id}").mute().post(mutePostRequestBody);


```