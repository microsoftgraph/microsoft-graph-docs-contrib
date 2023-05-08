---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.Tasks.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "businessScenarioProperties/externalContextId eq 'Warehouse-CA-36'";
});


```