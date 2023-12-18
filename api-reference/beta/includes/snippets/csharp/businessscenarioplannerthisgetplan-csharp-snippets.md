---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Solutions.BusinessScenarios.Item.Planner.GetPlan;
using Microsoft.Graph.Beta.Models;

var requestBody = new GetPlanPostRequestBody
{
	Target = new BusinessScenarioGroupTarget
	{
		OdataType = "microsoft.graph.businessScenarioGroupTarget",
		TaskTargetKind = PlannerTaskTargetKind.Group,
		GroupId = "7a339254-4b2b-4410-b295-c890a16776ee",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.GetPlan.PostAsync(requestBody);


```