---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.TenantRelationships.ManagedTenants.TenantTags.Item.MicrosoftGraphManagedTenantsUnassignTag;

var requestBody = new UnassignTagPostRequestBody
{
	TenantIds = new List<string>
	{
		"String",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.TenantRelationships.ManagedTenants.TenantTags["{tenantTag-id}"].MicrosoftGraphManagedTenantsUnassignTag.PostAsync(requestBody);


```