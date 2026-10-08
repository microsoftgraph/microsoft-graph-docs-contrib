---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	start = @{
		dateTime = "2025-12-15T00:00:00.0000000"
		timeZone = "Pacific Standard Time"
	}
	end = @{
		dateTime = "2025-12-15T23:59:59.0000000"
		timeZone = "Pacific Standard Time"
	}
	workLocationType = "timeOff"
	timeOffDetails = @{
		subject = "Personal Day"
		isAllDay = $false
	}
}

# A UPN can also be used as -UserId.
New-MgUserSettingWorkHourAndLocationOccurrence -UserId $userId -BodyParameter $params

```