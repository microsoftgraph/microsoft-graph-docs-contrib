---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	NewReminderTime = @{
		DateTime = "2016-10-19T10:37:00Z"
		TimeZone = "timeZone-value"
	}
}

# A UPN can also be used as -UserId.
Invoke-MgSnoozeUserEventReminder -UserId $userId -EventId $eventId -BodyParameter $params

```