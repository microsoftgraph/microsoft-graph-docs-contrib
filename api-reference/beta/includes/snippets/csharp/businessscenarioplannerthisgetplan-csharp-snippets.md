---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Solutions.BusinessScenarios.Item.Planner.GetPlan.GetPlanPostRequestBody
{
	Target = new BusinessScenarioGroupTarget
	{
		OdataType = "microsoft.graph.businessScenarioGroupTarget",
		TaskTargetKind = PlannerTaskTargetKind.Group,
		GroupId = "7a339254-4b2b-4410-b295-c890a16776ee",
	},
};
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.GetPlan.PostAsync(requestBody);


```