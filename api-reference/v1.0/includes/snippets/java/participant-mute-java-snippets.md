---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.participants.item.mute.MutePostRequestBody mutePostRequestBody = new com.microsoft.graph.communications.calls.item.participants.item.mute.MutePostRequestBody();
mutePostRequestBody.setClientContext("d45324c1-fcb5-430a-902c-f20af696537c");
var result = graphClient.communications().calls().byCallId("{call-id}").participants().byParticipantId("{participant-id}").mute().post(mutePostRequestBody);


```