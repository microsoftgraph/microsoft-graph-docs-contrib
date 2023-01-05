---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageCatalog = new AccessPackageCatalog
{
	DisplayName = "sales",
	Description = "for employees working with sales and outside sales partners",
	State = AccessPackageCatalogState.Published,
	IsExternallyVisible = true
};

await graphClient.IdentityGovernance.EntitlementManagement.Catalogs
	.Request()
	.AddAsync(accessPackageCatalog);

```