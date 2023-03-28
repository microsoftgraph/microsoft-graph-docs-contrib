---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ManagedTenants.TenantTag
{
	DisplayName = "Support",
	Description = "Tenants that have purchased extended support",
};
var result = await graphClient.TenantRelationships.ManagedTenants.TenantTags.PostAsync(requestBody);


```