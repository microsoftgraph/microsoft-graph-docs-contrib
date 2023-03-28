---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	CatalogId = "cec5d6ab-c75d-47c0-9c1c-92e89f66e384"
	DisplayName = "Marketing Campaign"
	Description = "Access to resources for the campaign"
}

New-MgEntitlementManagementAccessPackage -BodyParameter $params

```