---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantCustomizedInformation = new Microsoft.Graph.ManagedTenants.TenantCustomizedInformation
{
	TenantId = "String",
	Contacts = new List<Microsoft.Graph.ManagedTenants.TenantContactInformation>()
	{
		new TenantContactInformation
		{
			Name = "String",
			Title = "String",
			Email = "String",
			Phone = "String",
			Notes = "String"
		}
	},
	Website = "String"
};

await graphClient.TenantRelationships.ManagedTenants.TenantsCustomizedInformation["{managedTenants.tenantCustomizedInformation-id}"]
	.Request()
	.UpdateAsync(tenantCustomizedInformation);

```