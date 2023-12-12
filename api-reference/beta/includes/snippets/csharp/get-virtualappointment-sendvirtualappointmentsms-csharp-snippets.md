---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.OnlineMeetings.Item.SendVirtualAppointmentSms;

var requestBody = new SendVirtualAppointmentSmsPostRequestBody
{
	PhoneNumbers = new List<string>
	{
		"+13129224122",
		"+1242421412",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"virtualAppointmentSmsType" , "confirmation"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].SendVirtualAppointmentSms.PostAsync(requestBody);


```