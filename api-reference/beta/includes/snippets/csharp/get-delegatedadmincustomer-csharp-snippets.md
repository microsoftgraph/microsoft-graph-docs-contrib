---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delegatedAdminCustomer = await graphClient.TenantRelationships.DelegatedAdminCustomers["{delegatedAdminCustomer-id}"]
	.Request()
	.GetAsync();

```