---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	DueDateTime = @{
		DateTime = "2016-05-06T16:00:00"
		TimeZone = "Eastern Standard Time"
	}
}

# A UPN can also be used as -UserId.
Update-MgUserOutlookTask -UserId $userId -OutlookTaskId $outlookTaskId -BodyParameter $params

```