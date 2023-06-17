---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

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