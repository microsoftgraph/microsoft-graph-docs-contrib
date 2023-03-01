---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.OnlineMeetings.Item.Registration.RegistrationPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.type" , "#microsoft.graph.externalMeetingRegistration"
		},
		{
			"allowedRegistrant" , "everyone"
		},
	},
};
await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Registration.PostAsync(requestBody);


```