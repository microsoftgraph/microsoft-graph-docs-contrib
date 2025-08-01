---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new TlsInspectionPolicy
{
	Name = "Default TLS Inspection Policy",
	Description = "Policy for inspecting TLS traffic",
	Settings = new TlsInspectionPolicySettings
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"defaultAction" , "bypass"
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.TlsInspectionPolicies.PostAsync(requestBody);


```