---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.ManagedTenants

$params = @{
	displayName = "Onboarding"
	description = "Tenants that we are currently onboarding"
}

Update-MgBetaTenantRelationshipManagedTenantTag -TenantTagId $tenantTagId -BodyParameter $params

```