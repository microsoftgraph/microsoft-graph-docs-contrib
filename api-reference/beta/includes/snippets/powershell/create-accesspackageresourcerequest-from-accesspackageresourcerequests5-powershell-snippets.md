---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	CatalogId = "beedadfe-01d5-4025-910b-84abb9369997"
	RequestType = "AdminRemove"
	AccessPackageResource = @{
		Id = "354078e5-dbce-4894-8af4-0ab274d41662"
	}
}

New-MgEntitlementManagementAccessPackageResourceRequest -BodyParameter $params

```