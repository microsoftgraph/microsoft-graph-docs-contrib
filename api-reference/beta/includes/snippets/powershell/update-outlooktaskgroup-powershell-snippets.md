---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	Name = "Personal Tasks"
}

Update-MgUserOutlookTaskGroup -UserId $userId -OutlookTaskGroupId $outlookTaskGroupId -BodyParameter $params

```