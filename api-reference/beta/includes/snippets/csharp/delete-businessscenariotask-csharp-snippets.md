---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.Tasks["{businessScenarioTask-id}"]
	.Request()
	.DeleteAsync();

```