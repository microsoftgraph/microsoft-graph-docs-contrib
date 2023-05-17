---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Events.Item.SnoozeReminder.SnoozeReminderPostRequestBody
{
	NewReminderTime = new DateTimeTimeZone
	{
		DateTime = "dateTime-value",
		TimeZone = "timeZone-value",
	},
};
await graphClient.Me.Events["{event-id}"].SnoozeReminder.PostAsync(requestBody);


```