---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.TenantRelationships.ManagedTenants.TenantTags.Item.MicrosoftGraphManagedTenantsUnassignTag.UnassignTagPostRequestBody
{
	TenantIds = new List<string>
	{
		"String",
	},
};
var result = await graphClient.TenantRelationships.ManagedTenants.TenantTags["{tenantTag-id}"].MicrosoftGraphManagedTenantsUnassignTag.PostAsync(requestBody);


```