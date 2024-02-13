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
		Id = "748f8431-c7c6-404d-8564-df67aa8cfc5e",
		DisplayName = "Member",
		OriginSystem = "AadGroup",
		OriginId = "Member_0282e19d-bf41-435d-92a4-99bab93af305",
		Resource = new AccessPackageResource
		{
			Id = "b16e0e71-17b4-4ebd-a3cd-8a468542e418",
			DisplayName = "example group",
			Description = "a group whose members are to be assigned via an access package",
			OriginId = "0282e19d-bf41-435d-92a4-99bab93af305",
			OriginSystem = "AadGroup",
		},
	},
	Scope = new AccessPackageResourceScope
	{
		Id = "83b3e3e9-c8b3-481b-ad80-53e29d1eda9c",
		DisplayName = "Root",
		Description = "Root Scope",
		OriginId = "0282e19d-bf41-435d-92a4-99bab93af305",
		OriginSystem = "AadGroup",
		IsRootScope = true,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].ResourceRoleScopes.PostAsync(requestBody);


```