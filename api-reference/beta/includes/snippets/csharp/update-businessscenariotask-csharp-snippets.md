---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BusinessScenarioTask
{
	OdataType = "#microsoft.graph.businessScenarioTask",
	Title = "Customer order #12010",
	PercentComplete = 20,
	Priority = 1,
	BusinessScenarioProperties = new BusinessScenarioProperties
	{
		ExternalObjectVersion = "000003",
	},
};
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.Tasks["{businessScenarioTask-id}"].PatchAsync(requestBody);


```