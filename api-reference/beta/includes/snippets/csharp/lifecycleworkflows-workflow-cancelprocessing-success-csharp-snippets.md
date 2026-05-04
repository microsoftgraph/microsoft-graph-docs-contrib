---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.LifecycleWorkflows.Workflows.Item.MicrosoftGraphIdentityGovernanceCancelProcessing;
using Microsoft.Graph.Beta.Models.IdentityGovernance;

var requestBody = new CancelProcessingPostRequestBody
{
	Scope = new CancelRunsScope
	{
		OdataType = "#microsoft.graph.identityGovernance.cancelRunsScope",
		Runs = new List<Run>
		{
			new Run
			{
				Id = "8cdf25a8-c9d2-423e-a03d-3f39f03c3e97",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernanceCancelProcessing.PostAsync(requestBody);


```