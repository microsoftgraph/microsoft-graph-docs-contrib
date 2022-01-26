---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	Name = "Volunteer"
}

New-MgUserCalendar -UserId $userId -BodyParameter $params

```