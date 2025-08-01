---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.starttranscription.StartTranscriptionPostRequestBody startTranscriptionPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.starttranscription.StartTranscriptionPostRequestBody();
startTranscriptionPostRequestBody.setLanguage("en-us");
var result = graphClient.communications().calls().byCallId("{call-id}").startTranscription().post(startTranscriptionPostRequestBody);


```