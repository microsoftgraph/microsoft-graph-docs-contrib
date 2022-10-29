---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delegatedAdminCustomers = await graphClient.TenantRelationships.DelegatedAdminCustomers
	.Request()
	.GetAsync();

```