---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new TimeOff
{
	UserId = "aa162a04-bec6-4b81-ba99-96caa7b2b24d",
	SharedTimeOff = new TimeOffItem
	{
		TimeOffReasonId = "TOR_29a5ba96-c7ef-4e76-bec6-055323746314",
		StartDateTime = DateTimeOffset.Parse("2024-10-10T19:00:00Z"),
		EndDateTime = DateTimeOffset.Parse("2024-10-10T20:00:00Z"),
		Theme = ScheduleEntityTheme.Blue,
	},
	DraftTimeOff = null,
	IsStagedForDeletion = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.TimesOff.PostAsync(requestBody);


```