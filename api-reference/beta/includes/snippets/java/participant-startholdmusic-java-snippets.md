---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.participants.item.startholdmusic.StartHoldMusicPostRequestBody startHoldMusicPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.participants.item.startholdmusic.StartHoldMusicPostRequestBody();
MediaPrompt customPrompt = new MediaPrompt();
customPrompt.setOdataType("#microsoft.graph.mediaPrompt");
MediaInfo mediaInfo = new MediaInfo();
mediaInfo.setOdataType("#microsoft.graph.mediaInfo");
mediaInfo.setUri("https://bot.contoso.com/onHold.wav");
customPrompt.setMediaInfo(mediaInfo);
startHoldMusicPostRequestBody.setCustomPrompt(customPrompt);
startHoldMusicPostRequestBody.setClientContext("d45324c1-fcb5-430a-902c-f20af696537c");
var result = graphClient.communications().calls().byCallId("{call-id}").participants().byParticipantId("{participant-id}").startHoldMusic().post(startHoldMusicPostRequestBody);


```