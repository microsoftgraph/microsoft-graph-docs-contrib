---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerPlan
{
	Container = new PlannerPlanContainer
	{
		Url = "https://graph.microsoft.com/beta/groups/ebf3b108-5234-4e22-b93d-656d7dae5874",
	},
	Title = "title-value",
};
var result = await graphClient.Planner.Plans.PostAsync(requestBody);


```