---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PermissionGrantConditionSet
{
	PermissionType = PermissionType.Delegated,
	ResourceApplication = "00000003-0000-0000-c000-000000000000",
};
var result = await graphClient.Policies.PermissionGrantPolicies["{permissionGrantPolicy-id}"].Excludes.PostAsync(requestBody);


```