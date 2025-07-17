---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Communications.Calls.Item.Answer;
using Microsoft.Graph.Models;

var requestBody = new AnswerPostRequestBody
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
		IsDeltaRosterEnabled = true,
	},
	ParticipantCapacity = 200,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Communications.Calls["{call-id}"].Answer.PostAsync(requestBody);


```