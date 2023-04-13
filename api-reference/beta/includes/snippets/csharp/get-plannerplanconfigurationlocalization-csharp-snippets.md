---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerPlanConfigurationLocalization = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.PlanConfiguration.Localizations["{plannerPlanConfigurationLocalization-id}"]
	.Request()
	.GetAsync();

```