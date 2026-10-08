---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	start = @{
		dateTime = "2025-12-15T08:00:00.0000000"
		timeZone = "Pacific Standard Time"
	}
	end = @{
		dateTime = "2025-12-15T12:00:00.0000000"
		timeZone = "Pacific Standard Time"
	}
	workLocationType = "timeOff"
	timeOffDetails = @{
		subject = "Doctor Appointment"
		isAllDay = $false
	}
}

# A UPN can also be used as -UserId.
Set-MgUserSettingWorkHourAndLocationOccurrence -UserId $userId -WorkPlanOccurrenceId $workPlanOccurrenceId -BodyParameter $params

```