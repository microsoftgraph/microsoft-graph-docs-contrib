---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.TenantRelationships.ManagedTenants.ManagementActionTenantDeploymentStatuses.ManagedTenantsChangeDeploymentStatus.ChangeDeploymentStatusPostRequestBody
{
	TenantGroupId = "String",
	TenantId = "String",
	ManagementActionId = "String",
	ManagementTemplateId = "String",
	Status = "String",
};
var result = await graphClient.TenantRelationships.ManagedTenants.ManagementActionTenantDeploymentStatuses.ManagedTenantsChangeDeploymentStatus.PostAsync(requestBody);


```