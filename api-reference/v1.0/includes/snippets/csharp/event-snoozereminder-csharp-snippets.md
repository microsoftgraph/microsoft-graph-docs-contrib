---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.Events.Item.SnoozeReminder;
using Microsoft.Graph.Models;

var requestBody = new SnoozeReminderPostRequestBody
{
	NewReminderTime = new DateTimeTimeZone
	{
		DateTime = "dateTime-value",
		TimeZone = "timeZone-value",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.Events["{event-id}"].SnoozeReminder.PostAsync(requestBody);


```