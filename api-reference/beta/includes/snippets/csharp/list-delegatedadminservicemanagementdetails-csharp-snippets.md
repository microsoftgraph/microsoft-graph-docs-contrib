---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var serviceManagementDetails = await graphClient.TenantRelationships.DelegatedAdminCustomers["{delegatedAdminCustomer-id}"].ServiceManagementDetails
	.Request()
	.GetAsync();

```