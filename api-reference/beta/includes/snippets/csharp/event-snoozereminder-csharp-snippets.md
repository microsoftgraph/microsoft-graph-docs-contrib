---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Events.Item.SnoozeReminder.SnoozeReminderPostRequestBody
{
	NewReminderTime = new DateTimeTimeZone
	{
		DateTime = "2016-10-19T10:37:00Z",
		TimeZone = "timeZone-value",
	},
};
await graphClient.Me.Events["{event-id}"].SnoozeReminder.PostAsync(requestBody);


```