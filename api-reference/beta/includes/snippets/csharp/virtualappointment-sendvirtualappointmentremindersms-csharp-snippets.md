---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.OnlineMeetings.Item.SendVirtualAppointmentReminderSms;
using Microsoft.Graph.Beta.Models;

var requestBody = new SendVirtualAppointmentReminderSmsPostRequestBody
{
	RemindBeforeTimeInMinutesType = RemindBeforeTimeInMinutesType.Mins15,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"phoneNumbers" , new List<string>
			{
				"+13129224122",
				"+1242421412",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].SendVirtualAppointmentReminderSms.PostAsync(requestBody);


```