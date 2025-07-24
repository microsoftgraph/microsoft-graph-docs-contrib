---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new ThreatIntelligencePolicy
{
	OdataType = "#microsoft.graph.networkaccess.threatIntelligencePolicy",
	Name = "Malicious Domains Policy",
	Description = "Policy to block traffic to known malicious domains based on threat intelligence",
	Version = "1.0",
	Settings = new ThreatIntelligencePolicySettings
	{
		OdataType = "microsoft.graph.networkaccess.threatIntelligencePolicySettings",
		DefaultAction = ThreatIntelligenceAction.Block,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.ThreatIntelligencePolicies.PostAsync(requestBody);


```