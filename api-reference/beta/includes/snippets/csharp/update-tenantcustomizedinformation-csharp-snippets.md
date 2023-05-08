---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ManagedTenants.TenantCustomizedInformation
{
	OdataType = "#microsoft.graph.managedTenants.tenantCustomizedInformation",
	TenantId = "String",
	Contacts = new List<Microsoft.Graph.Beta.Models.ManagedTenants.TenantContactInformation>
	{
		new Microsoft.Graph.Beta.Models.ManagedTenants.TenantContactInformation
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
var result = await graphClient.TenantRelationships.ManagedTenants.TenantsCustomizedInformation["{tenantCustomizedInformation-id}"].PatchAsync(requestBody);


```