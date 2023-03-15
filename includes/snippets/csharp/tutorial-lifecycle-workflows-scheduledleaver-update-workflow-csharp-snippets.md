---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IdentityGovernance.Workflow
{
	IsEnabled = true,
	IsSchedulingEnabled = true,
};
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].PatchAsync(requestBody);


```