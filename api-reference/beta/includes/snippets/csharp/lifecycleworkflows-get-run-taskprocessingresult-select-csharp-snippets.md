---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userProcessingResults = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"].Runs["{identityGovernance.run-id}"].UserProcessingResults
	.Request()
	.Select("id,failedTasksCount,processingStatus,totalTasksCount,totalUnprocessedTasksCount,subject")
	.GetAsync();

```