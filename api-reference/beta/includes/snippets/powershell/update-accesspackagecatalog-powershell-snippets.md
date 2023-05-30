---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "Catalog One"
}

Update-MgEntitlementManagementAccessPackageCatalog -AccessPackageCatalogId $accessPackageCatalogId -BodyParameter $params

```