---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	originalStartTimeZone = "originalStartTimeZone-value"
	originalEndTimeZone = "originalEndTimeZone-value"
	responseStatus = @{
		response = ""
		time = [System.DateTime]::Parse("datetime-value")
	}
	uid = "iCalUId-value"
	reminderMinutesBeforeStart = 99
	isReminderOn = $true
}

Update-MgGroupEvent -GroupId $groupId -EventId $eventId -BodyParameter $params

```