---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.ManagedTenants

$params = @{
	DisplayName = "Onboarding"
	Description = "Tenants that we are currently onboarding"
}

Update-MgTenantRelationshipManagedTenantTag -TenantTagId $tenantTagId -BodyParameter $params

```