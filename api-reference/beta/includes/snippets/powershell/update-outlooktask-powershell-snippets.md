---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	dueDateTime = @{
		dateTime = "2016-05-06T16:00:00"
		timeZone = "Eastern Standard Time"
	}
}

# A UPN can also be used as -UserId.
Update-MgBetaUserOutlookTask -UserId $userId -OutlookTaskId $outlookTaskId -BodyParameter $params

```