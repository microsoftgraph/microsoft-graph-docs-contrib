---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].UserProcessingResults.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","failedTasksCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","workflowExecutionType","subject" };
});


```