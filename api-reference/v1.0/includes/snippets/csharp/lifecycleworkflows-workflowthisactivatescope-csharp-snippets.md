---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.IdentityGovernance.LifecycleWorkflows.Workflows.Item.MicrosoftGraphIdentityGovernanceActivateWithScope;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new ActivateWithScopePostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"subjects" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"id", new UntypedString("8cdf25a8-c9d2-423e-a03d-3f39f03c3e97")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"id", new UntypedString("ea09ac2e-77e3-4134-85f2-25ccf3c33387")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernanceActivateWithScope.PostAsync(requestBody);


```