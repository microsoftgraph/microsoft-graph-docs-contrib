---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	catalogId = "aa2f6514-3232-46e7-a08a-2411ad8d7128"
	displayName = "sales reps"
	description = "outside sales representatives"
}

New-MgEntitlementManagementAccessPackage -BodyParameter $params

```