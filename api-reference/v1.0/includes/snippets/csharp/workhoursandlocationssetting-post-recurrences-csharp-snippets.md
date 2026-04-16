---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new WorkPlanRecurrence
{
	Start = new DateTimeTimeZone
	{
		DateTime = "2025-12-11T09:00:00.0000000",
		TimeZone = "Pacific Standard Time",
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2025-12-11T18:00:00.0000000",
		TimeZone = "Pacific Standard Time",
	},
	WorkLocationType = WorkLocationType.Office,
	Recurrence = new PatternedRecurrence
	{
		Pattern = new RecurrencePattern
		{
			Type = RecurrencePatternType.Weekly,
			Interval = 1,
			FirstDayOfWeek = DayOfWeekObject.Sunday,
			DaysOfWeek = new List<DayOfWeekObject?>
			{
				DayOfWeekObject.Thursday,
			},
		},
		Range = new RecurrenceRange
		{
			Type = RecurrenceRangeType.NoEnd,
			StartDate = new Date(DateTime.Parse("2025-12-11")),
			RecurrenceTimeZone = "Pacific Standard Time",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Settings.WorkHoursAndLocations.Recurrences.PostAsync(requestBody);


```