---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	CatalogId = "cec5d6ab-c75d-47c0-9c1c-92e89f66e384"
	RequestType = "AdminAdd"
	Justification = ""
	AccessPackageResource = @{
		DisplayName = "Marketing resources"
		Description = "Marketing group"
		ResourceType = "AadGroup"
		OriginId = "e93e24d1-2b65-4a6c-a1dd-654a12225487"
		OriginSystem = "AadGroup"
	}
}

New-MgEntitlementManagementAccessPackageResourceRequest -BodyParameter $params

```