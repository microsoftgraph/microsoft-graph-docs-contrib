---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.ManagedTenants;

var requestBody = new TenantCustomizedInformation
{
	OdataType = "#microsoft.graph.managedTenants.tenantCustomizedInformation",
	TenantId = "String",
	Contacts = new List<TenantContactInformation>
	{
		new TenantContactInformation
		{
			OdataType = "microsoft.graph.managedTenants.tenantContactInformation",
			Name = "String",
			Title = "String",
			Email = "String",
			Phone = "String",
			Notes = "String",
		},
	},
	Website = "String",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.TenantRelationships.ManagedTenants.TenantsCustomizedInformation["{tenantCustomizedInformation-id}"].PatchAsync(requestBody);


```