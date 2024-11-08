---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new OpenShift
{
	SchedulingGroupId = "TAG_228940ed-ff84-4e25-b129-1b395cf78be0",
	SharedOpenShift = new OpenShiftItem
	{
		Notes = "InventoryManagement",
		OpenSlotCount = 2,
		DisplayName = "Dayshift",
		StartDateTime = DateTimeOffset.Parse("2018-10-04T00: 58: 45.340Z"),
		EndDateTime = DateTimeOffset.Parse("2018-10-04T09: 50: 45.332Z"),
		Theme = ScheduleEntityTheme.White,
		Activities = new List<ShiftActivity>
		{
			new ShiftActivity
			{
				IsPaid = true,
				StartDateTime = DateTimeOffset.Parse("2018-10-04T00: 58: 45.340Z"),
				EndDateTime = DateTimeOffset.Parse("2018-10-04T01: 58: 45.340Z"),
				Code = "",
				DisplayName = "Lunch",
			},
		},
	},
	DraftOpenShift = null,
	"isStagedForDeletion": false
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.OpenShifts.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Authorization", "Bearer {token}");
});


```