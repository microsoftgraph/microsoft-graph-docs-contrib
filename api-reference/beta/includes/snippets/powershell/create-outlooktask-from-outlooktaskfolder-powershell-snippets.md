---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	subject = "Shop for dinner"
	startDateTime = @{
		dateTime = "2016-04-23T18:00:00"
		timeZone = "Pacific Standard Time"
	}
	dueDateTime = @{
		dateTime = "2016-04-25T13:00:00"
		timeZone = "Pacific Standard Time"
	}
}

# A UPN can also be used as -UserId.
New-MgUserOutlookTaskFolderTask -UserId $userId -OutlookTaskFolderId $outlookTaskFolderId -BodyParameter $params

```