---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var crossTenantAccessPolicy = await graphClient.Policies.CrossTenantAccessPolicy
	.Request()
	.GetAsync();

```