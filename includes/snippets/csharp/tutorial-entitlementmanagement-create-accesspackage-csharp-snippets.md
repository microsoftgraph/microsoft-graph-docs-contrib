---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackage = new AccessPackage
{
	CatalogId = "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
	DisplayName = "Marketing Campaign",
	Description = "Access to resources for the campaign"
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages
	.Request()
	.AddAsync(accessPackage);

```