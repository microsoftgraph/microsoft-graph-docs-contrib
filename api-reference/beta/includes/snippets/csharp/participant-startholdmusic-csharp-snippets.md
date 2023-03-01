---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Communications.Calls.Item.Participants.Item.StartHoldMusic.StartHoldMusicPostRequestBody
{
	CustomPrompt = new Prompt
	{
		OdataType = "#microsoft.graph.mediaPrompt",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"mediaInfo" , new 
				{
					OdataType = "#microsoft.graph.mediaInfo",
					Uri = "https://bot.contoso.com/onHold.wav",
				}
			},
		},
	},
	ClientContext = "d45324c1-fcb5-430a-902c-f20af696537c",
};
var result = await graphClient.Communications.Calls["{call-id}"].Participants["{participant-id}"].StartHoldMusic.PostAsync(requestBody);


```