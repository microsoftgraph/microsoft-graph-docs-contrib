---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permissionGrantConditionSet = new PermissionGrantConditionSet
{
	PermissionType = PermissionType.Delegated,
	CertifiedClientApplicationsOnly = true
};

await graphClient.Policies.PermissionGrantPolicies["{permissionGrantPolicy-id}"].Includes
	.Request()
	.AddAsync(permissionGrantConditionSet);

```