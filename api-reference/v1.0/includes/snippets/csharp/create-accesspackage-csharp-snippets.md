---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackage
{
	DisplayName = "sales reps",
	Description = "outside sales representatives",
	IsHidden = false,
	Catalog = new AccessPackageCatalog
	{
		Id = "66584aae-98bb-48cc-9458-7bee5d2a6577",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages.PostAsync(requestBody);


```