---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Communications.Calls.Item.Answer.AnswerPostRequestBody
{
	CallbackUri = "https://bot.contoso.com/api/calls",
	AcceptedModalities = new List<Modality?>
	{
		Modality.Audio,
	},
	MediaConfig = new MediaConfig
	{
		OdataType = "#microsoft.graph.serviceHostedMediaConfig",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"preFetchMedia" , new List<>
				{
					new 
					{
						Uri = "https://cdn.contoso.com/beep.wav",
						ResourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088E",
					},
					new 
					{
						Uri = "https://cdn.contoso.com/cool.wav",
						ResourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088F",
					},
				}
			},
		},
	},
};
await graphClient.Communications.Calls["{call-id}"].Answer.PostAsync(requestBody);


```