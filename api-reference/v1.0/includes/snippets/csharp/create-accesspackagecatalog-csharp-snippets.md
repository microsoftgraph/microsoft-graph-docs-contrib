---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageCatalog
{
	DisplayName = "sales",
	Description = "for employees working with sales and outside sales partners",
	State = AccessPackageCatalogState.Published,
	IsExternallyVisible = true,
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.Catalogs.PostAsync(requestBody);


```