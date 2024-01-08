---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "sales"
	description = "for employees working with sales and outside sales partners"
	state = "published"
	isExternallyVisible = $true
}

New-MgEntitlementManagementCatalog -BodyParameter $params

```