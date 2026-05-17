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
		OriginId = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475",
		DisplayName = "Access Review Operator Service Role",
		Description = "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.",
		AccessPackageResource = new AccessPackageResource
		{
			Id = "b09a0288-a83e-4ae6-8a53-bc09aeb966ea",
			Description = "Dev",
			DisplayName = "Dev",
			ResourceType = "Subscription",
			OriginId = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978",
			OriginSystem = "AzureResources",
		},
		OriginSystem = "AzureResources",
		Type = RoleType.Active,
	},
	AccessPackageResourceScope = new AccessPackageResourceScope
	{
		Id = "c66c1e22-1093-46fb-a8a8-c0e334113ca4",
		Description = "Root",
		DisplayName = "Root",
		IsRootScope = true,
		OriginSystem = "AzureResources",
		OriginId = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].AccessPackageResourceRoleScopes.PostAsync(requestBody);


```