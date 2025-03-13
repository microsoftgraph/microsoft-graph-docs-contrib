---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.reject.RejectPostRequestBody rejectPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.reject.RejectPostRequestBody();
rejectPostRequestBody.setReason(RejectReason.Busy);
graphClient.communications().calls().byCallId("{call-id}").reject().post(rejectPostRequestBody);


```