---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Communications.Calls.Item.Answer.AnswerPostRequestBody
{
	CallbackUri = "callbackUri-value",
	MediaConfig = new AppHostedMediaConfig
	{
		OdataType = "#microsoft.graph.appHostedMediaConfig",
		Blob = "<Media Session Configuration Blob>",
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