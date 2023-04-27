---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	subject = "Shop for children's weekend"
	startDateTime = @{
		dateTime = "2016-05-03T09:00:00"
		timeZone = "Eastern Standard Time"
	}
	dueDateTime = @{
		dateTime = "2016-05-05T16:00:00"
		timeZone = "Eastern Standard Time"
	}
}

# A UPN can also be used as -UserId.
New-MgUserOutlookTask -UserId $userId -BodyParameter $params

```