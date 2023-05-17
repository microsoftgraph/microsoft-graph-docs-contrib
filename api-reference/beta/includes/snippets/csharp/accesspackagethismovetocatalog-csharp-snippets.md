---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackages.Item.MoveToCatalog.MoveToCatalogPostRequestBody
{
	CatalogId = "3301434b-99bd-46be-923b-d762c30c8e8b",
};
await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].MoveToCatalog.PostAsync(requestBody);


```