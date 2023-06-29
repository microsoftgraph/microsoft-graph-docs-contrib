---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	name = "Leisure tasks"
}

# A UPN can also be used as -UserId.
New-MgUserOutlookTaskGroup -UserId $userId -BodyParameter $params

```