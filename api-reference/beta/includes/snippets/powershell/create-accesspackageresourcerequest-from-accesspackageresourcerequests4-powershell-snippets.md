---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	catalogId = "beedadfe-01d5-4025-910b-84abb9369997"
	requestType = "AdminAdd"
	accessPackageResource = @{
		originId = "c6294667-7348-4f5a-be73-9d2c65f574f3"
		originSystem = "AadGroup"
	}
}

New-MgEntitlementManagementAccessPackageResourceRequest -BodyParameter $params

```