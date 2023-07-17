---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "sales reps"
	description = "outside sales representatives"
	isHidden = $false
	catalog = @{
		id = "66584aae-98bb-48cc-9458-7bee5d2a6577"
	}
}

New-MgEntitlementManagementAccessPackage -BodyParameter $params

```