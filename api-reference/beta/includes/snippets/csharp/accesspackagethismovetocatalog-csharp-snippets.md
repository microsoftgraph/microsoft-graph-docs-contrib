---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var catalogId = "3301434b-99bd-46be-923b-d762c30c8e8b";

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"]
	.MoveToCatalog(catalogId)
	.Request()
	.PostAsync();

```