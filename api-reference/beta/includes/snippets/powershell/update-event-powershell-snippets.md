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
		time = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
	}
	recurrence = $null
	uid = "iCalUId-value"
	reminderMinutesBeforeStart = 99
	isOnlineMeeting = $true
	onlineMeetingProvider = "teamsForBusiness"
	isReminderOn = $true
	hideAttendees = $false
	categories = @(
		"Red category"
	)
}

# A UPN can also be used as -UserId.
Update-MgUserEvent -UserId $userId -EventId $eventId -BodyParameter $params

```