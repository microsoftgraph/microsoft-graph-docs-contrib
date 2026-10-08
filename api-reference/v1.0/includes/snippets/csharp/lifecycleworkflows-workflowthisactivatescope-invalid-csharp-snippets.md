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
						"id", new UntypedString("2ea4c363-4b85-4529-b2ec-53b64308f39f")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"id", new UntypedString("44fc5392-9485-4348-871e-2ea17cc0a1b8")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernanceActivateWithScope.PostAsync(requestBody);


```