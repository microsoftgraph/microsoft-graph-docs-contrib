---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackages.Item.MoveToCatalog;

var requestBody = new MoveToCatalogPostRequestBody
{
	CatalogId = "3301434b-99bd-46be-923b-d762c30c8e8b",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].MoveToCatalog.PostAsync(requestBody);


```