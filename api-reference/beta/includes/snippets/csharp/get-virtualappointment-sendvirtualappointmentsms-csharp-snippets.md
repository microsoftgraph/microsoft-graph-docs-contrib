---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.OnlineMeetings.Item.SendVirtualAppointmentSms;
using Microsoft.Graph.Beta.Models;

var requestBody = new SendVirtualAppointmentSmsPostRequestBody
{
	Attendees = new List<AttendeeNotificationInfo>
	{
		new AttendeeNotificationInfo
		{
			PhoneNumber = "+13129224122",
			TimeZone = "Pacific Standard Time",
		},
		new AttendeeNotificationInfo
		{
			PhoneNumber = "+1242421412",
			TimeZone = "Eastern Standard Time",
		},
	},
	MessageType = VirtualAppointmentMessageType.Confirmation,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].SendVirtualAppointmentSms.PostAsync(requestBody);


```