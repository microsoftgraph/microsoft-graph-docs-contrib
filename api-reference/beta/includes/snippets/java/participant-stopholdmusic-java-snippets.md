---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.participants.item.stopholdmusic.StopHoldMusicPostRequestBody stopHoldMusicPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.participants.item.stopholdmusic.StopHoldMusicPostRequestBody();
stopHoldMusicPostRequestBody.setClientContext("d45324c1-fcb5-430a-902c-f20af696537c");
var result = graphClient.communications().calls().byCallId("{call-id}").participants().byParticipantId("{participant-id}").stopHoldMusic().post(stopHoldMusicPostRequestBody);


```