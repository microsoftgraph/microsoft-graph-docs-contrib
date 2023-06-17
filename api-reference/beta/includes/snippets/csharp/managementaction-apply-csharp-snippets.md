---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.TenantRelationships.ManagedTenants.ManagementActions.Item.MicrosoftGraphManagedTenantsApply.ApplyPostRequestBody
{
	TenantId = "String",
	TenantGroupId = "String",
	ManagementTemplateId = "String",
};
var result = await graphClient.TenantRelationships.ManagedTenants.ManagementActions["{managementAction-id}"].MicrosoftGraphManagedTenantsApply.PostAsync(requestBody);


```