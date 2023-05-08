---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PermissionGrantPolicy
{
	DisplayName = "Custom permission grant policy",
};
var result = await graphClient.Policies.PermissionGrantPolicies["{permissionGrantPolicy-id}"].PatchAsync(requestBody);


```