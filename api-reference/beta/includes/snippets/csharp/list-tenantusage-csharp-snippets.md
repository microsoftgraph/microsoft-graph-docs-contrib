---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantUsage = await graphClient.TenantRelationships.ManagedTenants.TenantUsage
	.Request()
	.GetAsync();

```