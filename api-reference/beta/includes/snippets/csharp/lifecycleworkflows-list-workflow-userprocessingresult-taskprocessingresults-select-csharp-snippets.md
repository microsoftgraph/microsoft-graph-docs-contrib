---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].Runs["{run-id}"].UserProcessingResults["{userProcessingResult-id}"].TaskProcessingResults.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","failureReason","processingStatus","subject","task" };
});


```