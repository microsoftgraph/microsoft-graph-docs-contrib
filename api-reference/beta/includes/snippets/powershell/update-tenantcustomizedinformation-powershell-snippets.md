---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.ManagedTenants

$params = @{
	"@odata.type" = "#microsoft.graph.managedTenants.tenantCustomizedInformation"
	tenantId = "String"
	contacts = @(
		@{
			"@odata.type" = "microsoft.graph.managedTenants.tenantContactInformation"
			name = "String"
			title = "String"
			email = "String"
			phone = "String"
			notes = "String"
		}
	)
	website = "String"
}

Update-MgTenantRelationshipManagedTenantCustomizedInformation -TenantCustomizedInformationId $tenantCustomizedInformationId -BodyParameter $params

```