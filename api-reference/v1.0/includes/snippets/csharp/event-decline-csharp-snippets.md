---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.Events.Item.Decline;
using Microsoft.Graph.Models;

var requestBody = new DeclinePostRequestBody
{
	Comment = "I won't be able to make this week. How about next week?",
	SendResponse = true,
	ProposedNewTime = new TimeSlot
	{
		Start = new DateTimeTimeZone
		{
			DateTime = "2019-12-02T18:00:00",
			TimeZone = "Pacific Standard Time",
		},
		End = new DateTimeTimeZone
		{
			DateTime = "2019-12-02T19:00:00",
			TimeZone = "Pacific Standard Time",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.Events["{event-id}"].Decline.PostAsync(requestBody);


```