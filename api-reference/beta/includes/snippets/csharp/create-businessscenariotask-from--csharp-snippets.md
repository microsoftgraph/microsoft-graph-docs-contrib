---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new BusinessScenarioTask
{
	Title = "Customer order #12010",
	PercentComplete = 0,
	Priority = 5,
	Target = new BusinessScenarioGroupTarget
	{
		OdataType = "microsoft.graph.businessScenarioGroupTarget",
		TaskTargetKind = PlannerTaskTargetKind.Group,
		GroupId = "7a339254-4b2b-4410-b295-c890a16776ee",
	},
	BusinessScenarioProperties = new BusinessScenarioProperties
	{
		ExternalObjectId = "Order#12010",
		ExternalContextId = "Warehouse-CA-36",
		ExternalObjectVersion = "000001",
		WebUrl = "https://ordertracking.contoso.com/view?id=12010",
		ExternalBucketId = "deliveryBucket",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.Tasks.PostAsync(requestBody);


```