---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var businessScenarioPlanner = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner
	.Request()
	.GetAsync();

```