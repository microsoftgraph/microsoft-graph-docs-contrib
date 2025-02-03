---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.updaterecordingstatus.UpdateRecordingStatusPostRequestBody updateRecordingStatusPostRequestBody = new com.microsoft.graph.communications.calls.item.updaterecordingstatus.UpdateRecordingStatusPostRequestBody();
updateRecordingStatusPostRequestBody.setClientContext("clientContext-value");
updateRecordingStatusPostRequestBody.setStatus(RecordingStatus.NotRecording);
var result = graphClient.communications().calls().byCallId("{call-id}").updateRecordingStatus().post(updateRecordingStatusPostRequestBody);


```