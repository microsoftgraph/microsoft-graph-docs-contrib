---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthorizationPolicy
{
	PermissionGrantPolicyIdsAssignedToDefaultUserRole = new List<string>
	{
		"managePermissionGrantsForSelf.microsoft-user-default-low",
	},
};
var result = await graphClient.Policies.AuthorizationPolicy["{authorizationPolicy-id}"].PatchAsync(requestBody);


```