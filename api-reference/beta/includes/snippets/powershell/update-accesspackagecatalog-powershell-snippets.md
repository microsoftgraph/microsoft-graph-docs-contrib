---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	displayName = "Catalog One"
}

Update-MgBetaEntitlementManagementAccessPackageCatalog -AccessPackageCatalogId $accessPackageCatalogId -BodyParameter $params

```