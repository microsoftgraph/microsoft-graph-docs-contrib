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
	DisplayName = "Test Policy 123",
	Description = "Pre-production test policy",
	DeferralInDays = 5,
	IsPaused = true,
	IsHotpatchEnabled = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Windows.Updates.Policies["{policy-id}"].Rings["{ring-id}"].PatchAsync(requestBody);


```