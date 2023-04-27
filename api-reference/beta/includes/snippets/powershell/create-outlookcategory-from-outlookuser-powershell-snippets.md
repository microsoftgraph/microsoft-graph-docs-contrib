---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	displayName = "Project expenses"
	color = "preset9"
}

# A UPN can also be used as -UserId.
New-MgUserOutlookMasterCategory -UserId $userId -BodyParameter $params

```