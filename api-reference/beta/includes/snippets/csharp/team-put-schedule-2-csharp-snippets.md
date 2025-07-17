---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Schedule
{
	Enabled = true,
	TimeZone = "America/Chicago",
	ProvisionStatus = OperationStatus.Completed,
	ProvisionStatusCode = null,
	OpenShiftsEnabled = true,
	SwapShiftsRequestsEnabled = true,
	OfferShiftRequestsEnabled = true,
	TimeOffRequestsEnabled = true,
	StartDayOfWeek = DayOfWeekObject.Tuesday,
	IsActivitiesIncludedWhenCopyingShiftsEnabled = true,
	IsCrossLocationShiftsEnabled = true,
	IsCrossLocationShiftRequestApprovalRequired = true,
	TimeClockEnabled = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.PutAsync(requestBody);


```