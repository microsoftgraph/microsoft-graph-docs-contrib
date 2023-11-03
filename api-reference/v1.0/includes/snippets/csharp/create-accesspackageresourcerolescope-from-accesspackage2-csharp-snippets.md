---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageResourceRoleScope
{
	Role = new AccessPackageResourceRole
	{
		Id = "6646a29e-da03-49f6-bcd9-dec124492de3",
		DisplayName = "Contributors",
		Description = null,
		OriginSystem = "SharePointOnline",
		OriginId = "4",
		Resource = new AccessPackageResource
		{
			Id = "53c71803-a0a8-4777-aecc-075de8ee3991",
		},
	},
	Scope = new AccessPackageResourceScope
	{
		Id = "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33",
		DisplayName = "Root",
		Description = "Root Scope",
		OriginId = "https://contoso.sharepoint.com/portals/Community",
		OriginSystem = "SharePointOnline",
		IsRootScope = true,
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].ResourceRoleScopes.PostAsync(requestBody);


```