---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.PlanConfiguration.Localizations["{plannerPlanConfigurationLocalization-id}"].DeleteAsync();


```