---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var crossTenantAccessPolicy = new CrossTenantAccessPolicy
{
	AllowedCloudEndpoints = new List<String>()
	{
		"microsoftonline.us",
		"partner.microsoftonline.cn"
	}
};

await graphClient.Policies.CrossTenantAccessPolicy
	.Request()
	.UpdateAsync(crossTenantAccessPolicy);

```