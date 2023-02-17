---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackage = new AccessPackage
{
	DisplayName = "sales reps",
	Description = "outside sales representatives",
	IsHidden = false,
	Catalog = new AccessPackageCatalog
	{
		Id = "66584aae-98bb-48cc-9458-7bee5d2a6577"
	}
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages
	.Request()
	.AddAsync(accessPackage);

```