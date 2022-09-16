---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var crossTenantAccessPolicy = new CrossTenantAccessPolicy
{
	DisplayName = "CrossTenantAccessPolicy"
};

await graphClient.Policies.CrossTenantAccessPolicy
	.Request()
	.UpdateAsync(crossTenantAccessPolicy);

```