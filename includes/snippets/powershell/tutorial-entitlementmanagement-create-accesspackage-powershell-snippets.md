---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	catalogId = "cec5d6ab-c75d-47c0-9c1c-92e89f66e384"
	displayName = "Marketing Campaign"
	description = "Access to resources for the campaign"
}

New-MgEntitlementManagementAccessPackage -BodyParameter $params

```