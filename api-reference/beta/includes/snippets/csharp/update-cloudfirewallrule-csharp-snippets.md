---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new PolicyRule
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"description" , "Updated rule description"
		},
		{
			"priority" , 200
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.CloudFirewallPolicies["{cloudFirewallPolicy-id}"].PolicyRules["{policyRule-id}"].PatchAsync(requestBody);


```