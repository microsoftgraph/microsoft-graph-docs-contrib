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
		Id = "055c76c1-a466-4f1a-9279-4a2ccaa7ac3e",
		OriginId = "/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475",
		DisplayName = "Access Review Operator Service Role",
		Description = "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.",
		AccessPackageResource = new AccessPackageResource
		{
			Id = "c347ca9b-a9cc-4df9-bc3c-00c8e0297692",
			Description = "test-mgmtgroup",
			DisplayName = "test-mgmtgroup",
			ResourceType = "ManagementGroup",
			OriginId = "/providers/Microsoft.Management/managementGroups/test-mgmtgroup",
			OriginSystem = "AzureResources",
		},
		OriginSystem = "AzureResources",
		Type = RoleType.Eligible,
	},
	AccessPackageResourceScope = new AccessPackageResourceScope
	{
		Id = "338613b3-b410-4c6d-b5e9-45590bc8a357",
		DisplayName = "Root",
		Description = "Root Scope",
		OriginId = "/providers/Microsoft.Management/managementGroups/test-mgmtgroup",
		OriginSystem = "AzureResources",
		IsRootScope = true,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].AccessPackageResourceRoleScopes.PostAsync(requestBody);


```