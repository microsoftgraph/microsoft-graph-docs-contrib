---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.IdentityGovernance.LifecycleWorkflows.Workflows.Item.Tasks.Item.TaskProcessingResults.Item.MicrosoftGraphIdentityGovernanceResume;
using Microsoft.Graph.Models.IdentityGovernance;

var requestBody = new ResumePostRequestBody
{
	Data = new CustomTaskExtensionCallbackData
	{
		OperationStatus = CustomTaskExtensionOperationStatus.Completed,
	},
	Source = "sample",
	Type = "lifecycleEvent",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].Tasks["{task-id}"].TaskProcessingResults["{taskProcessingResult-id}"].MicrosoftGraphIdentityGovernanceResume.PostAsync(requestBody);


```