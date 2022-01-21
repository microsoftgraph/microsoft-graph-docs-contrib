---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	Name = "Charity work"
}

Update-MgUserOutlookTaskFolder -UserId $userId -OutlookTaskFolderId $outlookTaskFolderId -BodyParameter $params

```