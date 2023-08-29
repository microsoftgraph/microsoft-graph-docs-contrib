---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	displayName = "sales"
	description = "for employees working with sales and outside sales partners"
	isExternallyVisible = $true
}

New-MgBetaEntitlementManagementAccessPackageCatalog -BodyParameter $params

```