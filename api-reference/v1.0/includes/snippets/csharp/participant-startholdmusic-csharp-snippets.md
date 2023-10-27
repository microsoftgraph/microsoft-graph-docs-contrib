---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Communications.Calls.Item.Participants.Item.StartHoldMusic.StartHoldMusicPostRequestBody
{
	CustomPrompt = new MediaPrompt
	{
		OdataType = "#microsoft.graph.mediaPrompt",
		MediaInfo = new MediaInfo
		{
			OdataType = "#microsoft.graph.mediaInfo",
			Uri = "https://bot.contoso.com/onHold.wav",
		},
	},
	ClientContext = "d45324c1-fcb5-430a-902c-f20af696537c",
};
var result = await graphClient.Communications.Calls["{call-id}"].Participants["{participant-id}"].StartHoldMusic.PostAsync(requestBody);


```