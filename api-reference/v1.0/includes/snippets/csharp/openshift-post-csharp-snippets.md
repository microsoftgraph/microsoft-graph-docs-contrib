---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new OpenShift
{
	SchedulingGroupId = "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a",
	SharedOpenShift = new OpenShiftItem
	{
		DisplayName = "Dayshift",
		StartDateTime = DateTimeOffset.Parse("2024-11-04T20:00:00Z"),
		EndDateTime = DateTimeOffset.Parse("2024-11-04T21:00:00Z"),
		Theme = ScheduleEntityTheme.Blue,
		Notes = "InventoryManagement",
		OpenSlotCount = 1,
		Activities = new List<ShiftActivity>
		{
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"draftTimeOff" , null
		},
		{
			"isStagedForDeletion" , false
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.OpenShifts.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Authorization", "Bearer {token}");
});


```