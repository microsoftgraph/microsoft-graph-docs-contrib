---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.unmute.UnmutePostRequestBody unmutePostRequestBody = new com.microsoft.graph.communications.calls.item.unmute.UnmutePostRequestBody();
unmutePostRequestBody.setClientContext("clientContext-value");
var result = graphClient.communications().calls().byCallId("{call-id}").unmute().post(unmutePostRequestBody);


```