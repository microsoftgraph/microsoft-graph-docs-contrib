---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	name = "Personal events"
}

# A UPN can also be used as -UserId.
New-MgBetaUserCalendarGroup -UserId $userId -BodyParameter $params

```