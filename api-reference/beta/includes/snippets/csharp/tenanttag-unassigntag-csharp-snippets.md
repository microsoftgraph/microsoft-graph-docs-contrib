---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.TenantRelationships.ManagedTenants.TenantTags.Item.ManagedTenantsUnassignTag.UnassignTagPostRequestBody
{
	TenantIds = new List<string>
	{
		"String",
	},
};
var result = await graphClient.TenantRelationships.ManagedTenants.TenantTags["{tenantTag-id}"].ManagedTenantsUnassignTag.PostAsync(requestBody);


```