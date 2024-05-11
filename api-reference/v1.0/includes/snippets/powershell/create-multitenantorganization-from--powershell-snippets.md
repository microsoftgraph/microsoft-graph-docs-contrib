---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	displayName = "Contoso organization"
	description = "Multitenant organization between Contoso, Fabrikam, and Woodgrove Bank"
}

Set-MgTenantRelationshipMultiTenantOrganization -BodyParameter $params

```