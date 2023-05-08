---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.TenantRelationships.ManagedTenants.TenantGroups.ManagedTenantsTenantSearch.TenantSearchPostRequestBody
{
	TenantId = "String",
};
var result = await graphClient.TenantRelationships.ManagedTenants.TenantGroups.ManagedTenantsTenantSearch.PostAsync(requestBody);


```