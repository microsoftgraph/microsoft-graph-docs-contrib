---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	name = "Marketing calendar"
}

# A UPN can also be used as -UserId.
New-MgBetaUserCalendarGroupCalendar -UserId $userId -CalendarGroupId $calendarGroupId -BodyParameter $params

```