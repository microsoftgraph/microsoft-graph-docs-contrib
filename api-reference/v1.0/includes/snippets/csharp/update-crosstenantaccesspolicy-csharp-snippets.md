---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CrossTenantAccessPolicy
{
	AllowedCloudEndpoints = new List<string>
	{
		"microsoftonline.us",
	},
};
var result = await graphClient.Policies.CrossTenantAccessPolicy.PatchAsync(requestBody);


```