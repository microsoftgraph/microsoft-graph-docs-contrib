---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	Name = "Personal events"
}

New-MgUserCalendarGroup -UserId $userId -BodyParameter $params

```