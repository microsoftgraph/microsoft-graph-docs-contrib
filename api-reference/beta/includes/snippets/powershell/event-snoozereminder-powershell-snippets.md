---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	newReminderTime = @{
		dateTime = "2016-10-19T10:37:00Z"
		timeZone = "timeZone-value"
	}
}

# A UPN can also be used as -UserId.
Invoke-MgBetaSnoozeUserEventReminder -UserId $userId -EventId $eventId -BodyParameter $params

```