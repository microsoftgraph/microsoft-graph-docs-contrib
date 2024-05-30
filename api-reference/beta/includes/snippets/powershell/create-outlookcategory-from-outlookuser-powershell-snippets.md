---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	displayName = "Project expenses"
	color = "preset9"
}

# A UPN can also be used as -UserId.
New-MgBetaUserOutlookMasterCategory -UserId $userId -BodyParameter $params

```