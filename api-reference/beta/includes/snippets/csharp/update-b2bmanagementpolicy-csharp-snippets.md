---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new B2bManagementPolicy
{
	OdataType = "#microsoft.graph.b2bManagementPolicy",
	Description = "Policy used for B2B features",
	DisplayName = "Policy1",
	Definition = new List<string>
	{
		"{'B2BManagementPolicy':{'Version':1}}",
	},
	IsOrganizationDefault = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.B2bManagementPolicies["{b2bManagementPolicy-id}"].PatchAsync(requestBody);


```