---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	CatalogId = "beedadfe-01d5-4025-910b-84abb9369997"
	RequestType = "AdminAdd"
	AccessPackageResource = @{
		OriginId = "c6294667-7348-4f5a-be73-9d2c65f574f3"
		OriginSystem = "AadGroup"
	}
}

New-MgEntitlementManagementAccessPackageResourceRequest -BodyParameter $params

```