---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	name = "name-value"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserCalendarGroup -UserId $userId -CalendarGroupId $calendarGroupId -BodyParameter $params

```