---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Communications.Calls.Item.Participants.Item.StopHoldMusic.StopHoldMusicPostRequestBody
{
	ClientContext = "d45324c1-fcb5-430a-902c-f20af696537c",
};
var result = await graphClient.Communications.Calls["{call-id}"].Participants["{participant-id}"].StopHoldMusic.PostAsync(requestBody);


```