---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.Catalogs["{accessPackageCatalog-id}"].Resources.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "originId eq 'e93e24d1-2b65-4a6c-a1dd-654a12225487'";
});


```