---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.IdentityGovernance.LifecycleWorkflows.Workflows.Item.Tasks.Item.TaskProcessingResults.Item.MicrosoftGraphIdentityGovernanceResume.ResumePostRequestBody
{
	Data = new Microsoft.Graph.Models.IdentityGovernance.CustomTaskExtensionCallbackData
	{
		OperationStatus = Microsoft.Graph.Models.IdentityGovernance.CustomTaskExtensionOperationStatus.Completed,
	},
	Source = "sample",
	Type = "lifecycleEvent",
};
await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].Tasks["{task-id}"].TaskProcessingResults["{taskProcessingResult-id}"].MicrosoftGraphIdentityGovernanceResume.PostAsync(requestBody);


```