---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ManagedTenants.TenantTag
{
	DisplayName = "Onboarding",
	Description = "Tenants that we are currently onboarding",
};
var result = await graphClient.TenantRelationships.ManagedTenants.TenantTags["{tenantTag-id}"].PatchAsync(requestBody);


```