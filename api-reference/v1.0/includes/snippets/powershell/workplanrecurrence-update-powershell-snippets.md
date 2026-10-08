---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	start = @{
		dateTime = "2025-12-11T09:00:00.0000000"
		timeZone = "Pacific Standard Time"
	}
	end = @{
		dateTime = "2025-12-11T18:00:00.0000000"
		timeZone = "Pacific Standard Time"
	}
	workLocationType = "office"
	recurrence = @{
		pattern = @{
			type = "weekly"
			interval = 1
			firstDayOfWeek = "sunday"
			daysOfWeek = @(
			"thursday"
		)
	}
	range = @{
		type = "noEnd"
		startDate = "2025-12-11"
		recurrenceTimeZone = "Pacific Standard Time"
	}
}
}

# A UPN can also be used as -UserId.
Set-MgUserSettingWorkHourAndLocationRecurrence -UserId $userId -WorkPlanRecurrenceId $workPlanRecurrenceId -BodyParameter $params

```