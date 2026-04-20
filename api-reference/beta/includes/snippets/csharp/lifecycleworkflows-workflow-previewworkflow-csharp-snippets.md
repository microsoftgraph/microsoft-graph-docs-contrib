---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.LifecycleWorkflows.Workflows.Item.MicrosoftGraphIdentityGovernancePreviewWorkflow;
using Microsoft.Graph.Beta.Models;

var requestBody = new PreviewWorkflowPostRequestBody
{
	Subjects = new List<DirectoryObject>
	{
		new User
		{
			OdataType = "#microsoft.graph.user",
			Id = "b59552b8-fa7b-4f68-8496-0a529aace8c0",
		},
		new User
		{
			OdataType = "#microsoft.graph.user",
			Id = "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernancePreviewWorkflow.PostAsync(requestBody);


```