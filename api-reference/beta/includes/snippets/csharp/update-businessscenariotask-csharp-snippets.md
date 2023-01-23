---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var businessScenarioTask = new BusinessScenarioTask
{
	Title = "Customer order #12010",
	PercentComplete = 20,
	Priority = 1,
	BusinessScenarioProperties = new BusinessScenarioProperties
	{
		ExternalObjectVersion = "000003"
	}
};

await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.Tasks["{businessScenarioTask-id}"]
	.Request()
	.UpdateAsync(businessScenarioTask);

```