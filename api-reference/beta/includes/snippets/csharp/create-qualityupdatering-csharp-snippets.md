---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.WindowsUpdates;

var requestBody = new QualityUpdateRing
{
	OdataType = "#microsoft.graph.windowsUpdates.qualityUpdateRing",
	DisplayName = "Ring0 - IT devices",
	Description = "First deployment ring to test updates before going to prod.",
	IncludedGroupAssignment = new IncludedGroupAssignment
	{
		OdataType = "microsoft.graph.windowsUpdates.includedGroupAssignment",
	},
	ExcludedGroupAssignment = new ExcludedGroupAssignment
	{
		OdataType = "microsoft.graph.windowsUpdates.excludedGroupAssignment",
	},
	DeferralInDays = 5,
	IsPaused = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Windows.Updates.Policies["{policy-id}"].Rings.PostAsync(requestBody);


```