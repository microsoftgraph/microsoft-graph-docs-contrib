---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Communications.Calls.Item.PlayPrompt.PlayPromptPostRequestBody
{
	ClientContext = "d45324c1-fcb5-430a-902c-f20af696537c",
	Prompts = new List<Prompt>
	{
		new Prompt
		{
			OdataType = "#microsoft.graph.mediaPrompt",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"mediaInfo" , new 
					{
						OdataType = "#microsoft.graph.mediaInfo",
						Uri = "https://cdn.contoso.com/beep.wav",
						ResourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088E",
					}
				},
			},
		},
	},
};
var result = await graphClient.Communications.Calls["{call-id}"].PlayPrompt.PostAsync(requestBody);


```