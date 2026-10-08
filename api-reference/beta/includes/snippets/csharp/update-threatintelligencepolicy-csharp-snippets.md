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
	Id = "a8352c78-90c6-4edd-aaca-9dc4292e7750",
	Name = "Threat Intel Policy",
	Description = "",
	Version = "1.0.0",
	LastModifiedDateTime = DateTimeOffset.Parse("2025-06-18T17:34:25.8207682Z"),
	Settings = new ThreatIntelligencePolicySettings
	{
		DefaultAction = ThreatIntelligenceAction.Allow,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.ThreatIntelligencePolicies["{threatIntelligencePolicy-id}"].PatchAsync(requestBody);


```