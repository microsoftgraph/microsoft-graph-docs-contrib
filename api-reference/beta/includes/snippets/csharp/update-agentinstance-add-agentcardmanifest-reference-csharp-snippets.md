---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AgentInstance
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"agentCardManifest@odata.bind" , "https://graph.microsoft.com/beta/agentRegistry/agentCardManifests('employee-assistant')"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.AgentRegistry.AgentInstances["{agentInstance-id}"].PatchAsync(requestBody);


```