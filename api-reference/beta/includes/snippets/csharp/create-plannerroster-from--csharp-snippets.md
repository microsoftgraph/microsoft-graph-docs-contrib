---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerRoster
{
	OdataType = "#microsoft.graph.plannerRoster",
};
var result = await graphClient.Planner.Rosters.PostAsync(requestBody);


```