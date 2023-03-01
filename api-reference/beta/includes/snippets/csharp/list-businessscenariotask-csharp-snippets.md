---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.Tasks.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "location/microsoft.graph.businessScenarioGroupTarget/groupId eq '7a339254-4b2b-4410-b295-c890a16776ee'";
});


```