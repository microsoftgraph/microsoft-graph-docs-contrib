---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ShiftPreferences
{
	Id = "SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7",
	Availability = new List<ShiftAvailability>
	{
		new ShiftAvailability
		{
			Recurrence = new PatternedRecurrence
			{
				Pattern = new RecurrencePattern
				{
					Type = RecurrencePatternType.Weekly,
					DaysOfWeek = new List<DayOfWeekObject?>
					{
						DayOfWeekObject.Monday,
						DayOfWeekObject.Wednesday,
						DayOfWeekObject.Friday,
					},
					Interval = 1,
				},
				Range = new RecurrenceRange
				{
					Type = RecurrenceRangeType.NoEnd,
				},
			},
			TimeZone = "Pacific Standard Time",
			TimeSlots = null,
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.etag" , "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Settings.ShiftPreferences.PatchAsync(requestBody);


```