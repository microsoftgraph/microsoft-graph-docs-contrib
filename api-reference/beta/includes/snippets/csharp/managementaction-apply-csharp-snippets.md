---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.TenantRelationships.ManagedTenants.ManagementActions.Item.MicrosoftGraphManagedTenantsApply;

var requestBody = new ApplyPostRequestBody
{
	TenantId = "String",
	TenantGroupId = "String",
	ManagementTemplateId = "String",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.TenantRelationships.ManagedTenants.ManagementActions["{managementAction-id}"].MicrosoftGraphManagedTenantsApply.PostAsync(requestBody);


```