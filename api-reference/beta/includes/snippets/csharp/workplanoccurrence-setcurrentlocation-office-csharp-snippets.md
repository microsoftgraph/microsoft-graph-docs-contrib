---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.Settings.WorkHoursAndLocations.Occurrences.SetCurrentLocation;
using Microsoft.Graph.Beta.Models;

var requestBody = new SetCurrentLocationPostRequestBody
{
	UpdateScope = WorkLocationUpdateScope.CurrentDay,
	WorkLocationType = WorkLocationType.Office,
	PlaceId = "12345678-1234-1234-1234-123456789012",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.Settings.WorkHoursAndLocations.Occurrences.SetCurrentLocation.PostAsync(requestBody);


```