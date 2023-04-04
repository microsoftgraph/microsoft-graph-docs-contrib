---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.ManagedTenants

$params = @{
	"@odata.type" = "#microsoft.graph.managedTenants.tenantCustomizedInformation"
	TenantId = "String"
	Contacts = @(
		@{
			"@odata.type" = "microsoft.graph.managedTenants.tenantContactInformation"
			Name = "String"
			Title = "String"
			Email = "String"
			Phone = "String"
			Notes = "String"
		}
	)
	Website = "String"
}

Update-MgTenantRelationshipManagedTenantCustomizedInformation -TenantCustomizedInformationId $tenantCustomizedInformationId -BodyParameter $params

```