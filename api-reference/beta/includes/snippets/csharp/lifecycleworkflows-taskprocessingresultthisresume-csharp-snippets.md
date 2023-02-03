---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var data = new Microsoft.Graph.IdentityGovernance.CustomTaskExtensionCallbackData
{
	OperationStatus = Microsoft.Graph.IdentityGovernance.CustomTaskExtensionOperationStatus.Completed
};

var source = "sample";

var type = "lifecycleEvent";

await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"].Tasks["{identityGovernance.task-id}"].TaskProcessingResults["{identityGovernance.taskProcessingResult-id}"]
	.Resume(data,source,type)
	.Request()
	.PostAsync();

```