---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new BusinessScenario
{
	OwnerAppIds = new List<string>
	{
		"44109254-4b2b-7a33-76ee-c890a167b295",
		"13eb9d8b-1d63-4153-9417-3a69ab200a78",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].PatchAsync(requestBody);


```