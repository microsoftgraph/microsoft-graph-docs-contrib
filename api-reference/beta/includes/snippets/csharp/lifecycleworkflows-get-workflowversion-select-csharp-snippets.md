---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].Versions["{workflowVersion-versionNumber}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "category","displayName","versionNumber","executionConditions" };
	requestConfiguration.QueryParameters.Expand = new string []{ "tasks" };
});


```