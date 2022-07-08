---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	Subject = "Shop for children's weekend"
	StartDateTime = @{
		DateTime = "2016-05-03T09:00:00"
		TimeZone = "Eastern Standard Time"
	}
	DueDateTime = @{
		DateTime = "2016-05-05T16:00:00"
		TimeZone = "Eastern Standard Time"
	}
}

# A UPN can also be used as -UserId.
New-MgUserOutlookTask -UserId $userId -BodyParameter $params

```