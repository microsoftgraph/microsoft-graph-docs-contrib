---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

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
New-MgBetaUserOutlookTaskFolderTask -UserId $userId -OutlookTaskFolderId $outlookTaskFolderId -BodyParameter $params

```