---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Communications.Calls.Item.PlayPrompt;
using Microsoft.Graph.Models;

var requestBody = new PlayPromptPostRequestBody
{
	ClientContext = "d45324c1-fcb5-430a-902c-f20af696537c",
	Prompts = new List<Prompt>
	{
		new MediaPrompt
		{
			OdataType = "#microsoft.graph.mediaPrompt",
			MediaInfo = new MediaInfo
			{
				OdataType = "#microsoft.graph.mediaInfo",
				Uri = "https://cdn.contoso.com/beep.wav",
				ResourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088E",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Communications.Calls["{call-id}"].PlayPrompt.PostAsync(requestBody);


```