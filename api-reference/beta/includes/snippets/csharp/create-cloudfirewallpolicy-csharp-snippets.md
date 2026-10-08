---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new CloudFirewallPolicy
{
	OdataType = "#microsoft.graph.networkaccess.cloudFirewallPolicy",
	Name = "Block unauthorized egress",
	Description = "Policy to block unauthorized outbound connections",
	Settings = new CloudFirewallPolicySettings
	{
		DefaultAction = CloudFirewallAction.Allow,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.CloudFirewallPolicies.PostAsync(requestBody);


```