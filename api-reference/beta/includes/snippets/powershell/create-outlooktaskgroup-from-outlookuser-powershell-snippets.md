---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	name = "Leisure tasks"
}

# A UPN can also be used as -UserId.
New-MgBetaUserOutlookTaskGroup -UserId $userId -BodyParameter $params

```