---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.OnlineMeetings.Item.SendVirtualAppointmentReminderSms;
using Microsoft.Graph.Models;

var requestBody = new SendVirtualAppointmentReminderSmsPostRequestBody
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
	RemindBeforeTimeInMinutesType = RemindBeforeTimeInMinutesType.Mins15,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].SendVirtualAppointmentReminderSms.PostAsync(requestBody);


```