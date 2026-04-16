---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.IdentityGovernance.LifecycleWorkflows.Workflows.Item.MicrosoftGraphIdentityGovernanceActivateWithScope;
using Microsoft.Graph.Models.IdentityGovernance;

var requestBody = new ActivateWithScopePostRequestBody
{
	Scope = new ActivateProcessingResultScope
	{
		OdataType = "microsoft.graph.identityGovernance.activateProcessingResultScope",
		ProcessingResults = new List<UserProcessingResult>
		{
			new UserProcessingResult
			{
				Id = "abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_638927021459371237_0cdd8963-aaaa-4632-a1f2-aaaa7230aaaa",
			},
			new UserProcessingResult
			{
				Id = "abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_388131231459357126_aaaa8963-1c30-4632-aaaa-ac96723069cb",
			},
		},
		TaskScope = ActivationTaskScopeType.AllTasks,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernanceActivateWithScope.PostAsync(requestBody);


```