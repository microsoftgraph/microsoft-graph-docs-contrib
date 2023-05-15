---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "(displayName eq 'General')";
});


```