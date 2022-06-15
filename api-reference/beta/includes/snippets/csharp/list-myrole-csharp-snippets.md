---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var myRoles = await graphClient.TenantRelationships.ManagedTenants.MyRoles
	.Request()
	.GetAsync();

```