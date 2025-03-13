---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AccessPackageResourceRoleScope
{
	Role = new AccessPackageResourceRole
	{
		DisplayName = "Contributors",
		OriginSystem = "SharePointOnline",
		OriginId = "4",
		Resource = new AccessPackageResource
		{
			Id = "53c71803-a0a8-4777-aecc-075de8ee3991",
		},
	},
	Scope = new AccessPackageResourceScope
	{
		DisplayName = "Root",
		Description = "Root Scope",
		OriginId = "https://contoso.sharepoint.com/portals/Community",
		OriginSystem = "SharePointOnline",
		IsRootScope = true,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].ResourceRoleScopes.PostAsync(requestBody);


```