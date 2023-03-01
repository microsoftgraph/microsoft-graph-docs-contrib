---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.TenantRelationships.ManagedTenants.TenantTags.Item.ManagedTenantsAssignTag.AssignTagPostRequestBody
{
	TenantIds = new List<string>
	{
		"String",
	},
};
var result = await graphClient.TenantRelationships.ManagedTenants.TenantTags["{tenantTag-id}"].ManagedTenantsAssignTag.PostAsync(requestBody);


```