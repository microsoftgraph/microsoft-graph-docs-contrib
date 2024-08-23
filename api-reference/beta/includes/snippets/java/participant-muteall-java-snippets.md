---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.participants.muteall.MuteAllPostRequestBody muteAllPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.participants.muteall.MuteAllPostRequestBody();
LinkedList<String> participants = new LinkedList<String>();
participants.add("");
muteAllPostRequestBody.setParticipants(participants);
muteAllPostRequestBody.setClientContext("clientContext-value");
var result = graphClient.communications().calls().byCallId("{call-id}").participants().muteAll().post(muteAllPostRequestBody);


```