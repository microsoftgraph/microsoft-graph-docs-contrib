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
		"partner.microsoftonline.cn",
	},
};
var result = await graphClient.Policies.CrossTenantAccessPolicy.PatchAsync(requestBody);


```