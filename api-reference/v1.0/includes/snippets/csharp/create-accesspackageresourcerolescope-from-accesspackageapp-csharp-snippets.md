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
		Id = "cde82ecb-e461-496b-98fb-4f807c7ca640",
		DisplayName = "Standard User",
		Description = "Standard User",
		OriginSystem = "AadApplication",
		OriginId = "a29a7690-b3c4-4ed5-96c6-f640cde06fb8",
		Resource = new AccessPackageResource
		{
			Id = "5f80c0c7-a180-4521-b585-18200048a0d8",
			OriginId = "e81d7f57-0840-45e1-894b-f505c1bdcc1f",
			OriginSystem = "AadApplication",
		},
	},
	Scope = new AccessPackageResourceScope
	{
		Id = "dbeb8772-9907-4e95-a28e-a8d70dbcda69",
		OriginId = "e81d7f57-0840-45e1-894b-f505c1bdcc1f",
		OriginSystem = "AadApplication",
		IsRootScope = true,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].ResourceRoleScopes.PostAsync(requestBody);


```