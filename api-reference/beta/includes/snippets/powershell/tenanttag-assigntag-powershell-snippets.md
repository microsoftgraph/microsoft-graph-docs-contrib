---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	tenantIds = @(
		"String"
	)
}

Set-MgBetaTenantRelationshipManagedTenantTag -TenantTagId $tenantTagId -BodyParameter $params

```