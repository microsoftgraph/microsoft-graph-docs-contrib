---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	name = "Personal events"
}

# A UPN can also be used as -UserId.
New-MgUserCalendarGroup -UserId $userId -BodyParameter $params

```