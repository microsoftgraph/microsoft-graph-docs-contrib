---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var target = new BusinessScenarioGroupTarget
{
	TaskTargetKind = PlannerTaskTargetKind.Group,
	GroupId = "7a339254-4b2b-4410-b295-c890a16776ee"
};

await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner
	.GetPlan(target)
	.Request()
	.PostAsync();

```