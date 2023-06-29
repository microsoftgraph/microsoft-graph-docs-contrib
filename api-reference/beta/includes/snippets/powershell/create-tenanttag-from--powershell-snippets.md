---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.ManagedTenants

$params = @{
	displayName = "Support"
	description = "Tenants that have purchased extended support"
}

New-MgTenantRelationshipManagedTenantTag -BodyParameter $params

```