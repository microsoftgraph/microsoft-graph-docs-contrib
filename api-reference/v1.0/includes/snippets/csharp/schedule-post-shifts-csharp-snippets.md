---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Shift
{
	UserId = "5ca83ce7-291d-43b7-bf53-af79eef4bc1d",
	DraftShift = new ShiftItem
	{
		DisplayName = null,
		StartDateTime = DateTimeOffset.Parse("2024-10-08T15:00:00Z"),
		EndDateTime = DateTimeOffset.Parse("2024-10-09T00:00:00Z"),
		Theme = ScheduleEntityTheme.Blue,
		Notes = null,
		Activities = new List<ShiftActivity>
		{
		},
	},
	SharedShift = null,
	IsStagedForDeletion = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.Shifts.PostAsync(requestBody);


```