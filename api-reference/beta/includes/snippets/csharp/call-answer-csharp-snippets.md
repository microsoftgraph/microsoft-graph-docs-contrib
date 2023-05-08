---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Communications.Calls.Item.Answer.AnswerPostRequestBody
{
	CallbackUri = "callbackUri-value",
	MediaConfig = new MediaConfig
	{
		OdataType = "#microsoft.graph.appHostedMediaConfig",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"blob" , "<Media Session Configuration Blob>"
			},
		},
	},
	AcceptedModalities = new List<Modality?>
	{
		Modality.Audio,
	},
	CallOptions = new IncomingCallOptions
	{
		OdataType = "#microsoft.graph.incomingCallOptions",
		IsContentSharingNotificationEnabled = true,
	},
	ParticipantCapacity = 200,
};
await graphClient.Communications.Calls["{call-id}"].Answer.PostAsync(requestBody);


```