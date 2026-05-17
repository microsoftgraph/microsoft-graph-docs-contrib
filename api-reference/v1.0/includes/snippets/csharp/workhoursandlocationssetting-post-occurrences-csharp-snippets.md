---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new WorkPlanOccurrence
{
	Start = new DateTimeTimeZone
	{
		DateTime = "2025-12-15T00:00:00.0000000",
		TimeZone = "Pacific Standard Time",
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2025-12-15T23:59:59.0000000",
		TimeZone = "Pacific Standard Time",
	},
	WorkLocationType = WorkLocationType.TimeOff,
	TimeOffDetails = new TimeOffDetails
	{
		Subject = "Personal Day",
		IsAllDay = false,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Settings.WorkHoursAndLocations.Occurrences.PostAsync(requestBody);


```