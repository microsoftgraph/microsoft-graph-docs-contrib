---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PermissionGrantPolicy
{
	DisplayName = "Custom permission grant policy",
};
var result = await graphClient.Policies.PermissionGrantPolicies["{permissionGrantPolicy-id}"].PatchAsync(requestBody);


```