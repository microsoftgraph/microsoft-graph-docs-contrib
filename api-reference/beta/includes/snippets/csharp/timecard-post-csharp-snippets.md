---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new TimeCard
{
	UserId = "a3601044-a1b5-438e-b742-f78d01d68a67",
	ClockInEvent = new TimeCardEvent
	{
		DateTime = DateTimeOffset.Parse("2019-03-18T00:00:00.000Z"),
		IsAtApprovedLocation = true,
		Notes = new ItemBody
		{
			Content = "Started late due to traffic in CA 237",
			ContentType = BodyType.Text,
		},
	},
	Notes = new ItemBody
	{
		Content = "8 To 5 Inventory management",
		ContentType = BodyType.Text,
	},
	Breaks = new List<TimeCardBreak>
	{
		new TimeCardBreak
		{
			BreakId = "string",
			Notes = new ItemBody
			{
				Content = "Lunch break",
				ContentType = BodyType.Text,
			},
			Start = new TimeCardEvent
			{
				DateTime = DateTimeOffset.Parse("2019-03-18T02:00:00.000Z"),
				IsAtApprovedLocation = true,
				Notes = new ItemBody
				{
					Content = "Reduced break to make up for lost time",
					ContentType = BodyType.Text,
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.TimeCards.PostAsync(requestBody);


```