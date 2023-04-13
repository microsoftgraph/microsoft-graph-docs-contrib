---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var taskProcessingResults = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"].UserProcessingResults["{identityGovernance.userProcessingResult-id}"].TaskProcessingResults
	.Request()
	.Select("id,processingStatus,failureReason,subject,task")
	.GetAsync();

```