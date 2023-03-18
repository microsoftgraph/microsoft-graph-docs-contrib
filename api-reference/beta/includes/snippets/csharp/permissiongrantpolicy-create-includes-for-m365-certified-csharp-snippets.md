---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PermissionGrantConditionSet
{
	PermissionType = PermissionType.Delegated,
	CertifiedClientApplicationsOnly = true,
};
var result = await graphClient.Policies.PermissionGrantPolicies["{permissionGrantPolicy-id}"].Includes.PostAsync(requestBody);


```