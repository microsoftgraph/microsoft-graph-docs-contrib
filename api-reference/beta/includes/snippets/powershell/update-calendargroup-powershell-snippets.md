---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	name = "name-value"
}

# A UPN can also be used as -UserId.
Update-MgUserCalendarGroup -UserId $userId -CalendarGroupId $calendarGroupId -BodyParameter $params

```