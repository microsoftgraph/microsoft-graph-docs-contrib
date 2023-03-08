---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].AccessPackageResourceRoleScopes.PostAsync(requestBody);


```