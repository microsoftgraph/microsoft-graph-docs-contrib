---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CrossTenantMigration
{
	OdataType = "#microsoft.graph.crossTenantMigration",
	InboundAccess = new M365CapabilityInboundAccess
	{
		IsAllowed = true,
		ResourceScopes = new M365CapabilityResourceScopes
		{
			Included = new List<M365CapabilityResourceScope>
			{
				new M365CapabilityResourceScope
				{
					ResourceId = "ad4fc698-74dc-4f62-9e71-ba9b591e8e74",
					ResourceType = M365ResourceType.Group,
				},
			},
			Excluded = new List<M365CapabilityResourceScope>
			{
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.CrossTenantAccessPolicy.Default.M365Capabilities.PostAsync(requestBody);


```