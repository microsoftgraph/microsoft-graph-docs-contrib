---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new TimeCard
{
	UserId = "d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2",
	ClockInEvent = new TimeCardEvent
	{
		DateTime = DateTimeOffset.Parse("2025-01-07T21:00:00.000Z"),
		IsAtApprovedLocation = true,
		Notes = new ItemBody
		{
			Content = "Started late due to traffic in CA 237",
			ContentType = BodyType.Text,
		},
	},
	ClockOutEvent = new TimeCardEvent
	{
		DateTime = DateTimeOffset.Parse("2025-01-07T21:30:00.000Z"),
		IsAtApprovedLocation = true,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.TimeCards.PostAsync(requestBody);


```