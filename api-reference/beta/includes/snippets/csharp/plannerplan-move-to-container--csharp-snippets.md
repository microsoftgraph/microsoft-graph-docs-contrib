---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Planner.Plans.Item.MoveToContainer;
using Microsoft.Graph.Beta.Models;

var requestBody = new MoveToContainerPostRequestBody
{
	Container = new PlannerPlanContainer
	{
		ContainerId = "groupId",
		Type = PlannerContainerType.Group,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Planner.Plans["{plannerPlan-id}"].MoveToContainer.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("If-Match", "\"string\"");
});


```