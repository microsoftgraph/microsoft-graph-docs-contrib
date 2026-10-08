---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	role = "owner"
}

Update-MgTenantRelationshipMultiTenantOrganizationTenant -MultiTenantOrganizationMemberId $multiTenantOrganizationMemberId -BodyParameter $params

```