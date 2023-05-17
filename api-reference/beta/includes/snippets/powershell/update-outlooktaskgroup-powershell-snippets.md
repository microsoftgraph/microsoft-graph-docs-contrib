---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	name = "Personal Tasks"
}

# A UPN can also be used as -UserId.
Update-MgUserOutlookTaskGroup -UserId $userId -OutlookTaskGroupId $outlookTaskGroupId -BodyParameter $params

```