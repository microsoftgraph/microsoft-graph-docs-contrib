---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AgentCollection
{
	Id = "Security Copilot Platform Workspace: 001",
	OwnerIds = new List<string>
	{
		"daf58b0e-44e1-433c-b6b0-ca70cae320b8",
		"b9108c41-d2d2-4e78-b073-92f57b752bd0",
	},
	ManagedBy = "719cc904-9700-4e08-9941-fd826cc84c60",
	OriginatingStore = "Microsoft Security Copilot",
	CreatedBy = "d47bffae-411a-4de9-8548-05e79bc01f0d",
	DisplayName = "Conditional Access Agents",
	Description = "A collection of agents to manage your organizations conditional access policies",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.AgentRegistry.AgentCollections.PostAsync(requestBody);


```