---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.TenantRelationships.ManagedTenants.ManagementActions.Item.ManagedTenantsApply.ApplyPostRequestBody
{
	TenantId = "String",
	TenantGroupId = "String",
	ManagementTemplateId = "String",
};
var result = await graphClient.TenantRelationships.ManagedTenants.ManagementActions["{managementAction-id}"].ManagedTenantsApply.PostAsync(requestBody);


```