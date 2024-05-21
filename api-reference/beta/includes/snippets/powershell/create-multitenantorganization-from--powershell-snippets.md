---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	displayName = "Contoso organization"
	description = "Multi-tenant organization between Contoso, Fabrikam, and Woodgrove Bank"
}

Set-MgBetaTenantRelationshipMultiTenantOrganization -BodyParameter $params

```