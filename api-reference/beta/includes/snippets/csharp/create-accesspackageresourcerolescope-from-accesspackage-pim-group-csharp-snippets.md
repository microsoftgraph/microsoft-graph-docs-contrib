---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AccessPackageResourceRoleScope
{
	AccessPackageResourceRole = new AccessPackageResourceRole
	{
		OriginId = "EligibleMember_89590e41-f49d-4792-b531-6ed6fe6cfe18",
		DisplayName = "Eligible Member",
		OriginSystem = "AadGroup",
		AccessPackageResource = new AccessPackageResource
		{
			Id = "b86a1828-3171-409e-8343-32a224f324a0",
			ResourceType = "O365 Group",
			OriginId = "bcfae74a-91a6-46e9-99bf-89d6487cc3f3",
			OriginSystem = "AadGroup",
		},
	},
	AccessPackageResourceScope = new AccessPackageResourceScope
	{
		OriginId = "bcfae74a-91a6-46e9-99bf-89d6487cc3f3",
		OriginSystem = "AadGroup",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].AccessPackageResourceRoleScopes.PostAsync(requestBody);


```