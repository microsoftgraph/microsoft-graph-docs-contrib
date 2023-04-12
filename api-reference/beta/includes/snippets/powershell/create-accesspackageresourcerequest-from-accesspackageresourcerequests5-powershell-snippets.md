---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	catalogId = "beedadfe-01d5-4025-910b-84abb9369997"
	requestType = "AdminRemove"
	accessPackageResource = @{
		id = "354078e5-dbce-4894-8af4-0ab274d41662"
	}
}

New-MgEntitlementManagementAccessPackageResourceRequest -BodyParameter $params

```