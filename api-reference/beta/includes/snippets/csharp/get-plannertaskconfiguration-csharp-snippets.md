---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerTaskConfiguration = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.TaskConfiguration
	.Request()
	.GetAsync();

```