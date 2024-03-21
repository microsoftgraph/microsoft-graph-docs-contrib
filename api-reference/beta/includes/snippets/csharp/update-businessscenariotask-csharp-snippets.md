---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new BusinessScenarioTask
{
	OdataType = "#microsoft.graph.businessScenarioTask",
	Title = "Customer order #12010",
	PercentComplete = 20,
	Priority = 1,
	BusinessScenarioProperties = new BusinessScenarioProperties
	{
		ExternalObjectVersion = "000003",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.Tasks["{businessScenarioTask-id}"].PatchAsync(requestBody);


```