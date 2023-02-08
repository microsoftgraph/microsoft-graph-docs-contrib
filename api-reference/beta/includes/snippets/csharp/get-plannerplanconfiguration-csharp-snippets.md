---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlanConfiguration = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.PlanConfiguration
	.Request()
	.GetAsync();

```