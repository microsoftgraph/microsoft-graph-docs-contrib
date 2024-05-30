---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AccessPackageResourceRoleScope
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"role" , new 
			{
				OriginId = "Eligible",
				DisplayName = "Eligible Member",
				OriginSystem = "DirectoryRole",
				Resource = new 
				{
					Id = "ea036095-57a6-4c90-a640-013edf151eb1",
				},
			}
		},
		{
			"scope" , new 
			{
				Description = "Root Scope",
				DisplayName = "Root",
				IsRootScope = true,
				OriginSystem = "DirectoryRole",
				OriginId = "c4e39bd9-1100-46d3-8c65-fb160da0071f",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].AccessPackageResourceRoleScopes.PostAsync(requestBody);


```