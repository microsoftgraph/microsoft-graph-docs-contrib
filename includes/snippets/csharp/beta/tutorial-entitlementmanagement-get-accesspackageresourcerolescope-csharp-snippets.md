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
		OriginId = "Member_e93e24d1-2b65-4a6c-a1dd-654a12225487",
		DisplayName = "Member",
		OriginSystem = "AadGroup",
		AccessPackageResource = new AccessPackageResource
		{
			Id = "4a1e21c5-8a76-4578-acb1-641160e076e8",
			ResourceType = "Security Group",
			OriginId = "e93e24d1-2b65-4a6c-a1dd-654a12225487",
			OriginSystem = "AadGroup",
		},
	},
	AccessPackageResourceScope = new AccessPackageResourceScope
	{
		OriginId = "e93e24d1-2b65-4a6c-a1dd-654a12225487",
		OriginSystem = "AadGroup",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].AccessPackageResourceRoleScopes.PostAsync(requestBody);


```