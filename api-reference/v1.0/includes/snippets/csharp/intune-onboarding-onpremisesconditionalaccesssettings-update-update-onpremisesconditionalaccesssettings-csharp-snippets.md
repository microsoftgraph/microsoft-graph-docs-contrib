---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OnPremisesConditionalAccessSettings
{
	OdataType = "#microsoft.graph.onPremisesConditionalAccessSettings",
	Enabled = true,
	IncludedGroups = new List<Guid?>
	{
		Guid.Parse("77c9d466-d466-77c9-66d4-c97766d4c977"),
	},
	ExcludedGroups = new List<Guid?>
	{
		Guid.Parse("2a0afae4-fae4-2a0a-e4fa-0a2ae4fa0a2a"),
	},
	OverrideDefaultRule = true,
};
var result = await graphClient.DeviceManagement.ConditionalAccessSettings.PatchAsync(requestBody);


```