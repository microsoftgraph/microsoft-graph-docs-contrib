---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	name = "Cooking"
}

# A UPN can also be used as -UserId.
New-MgUserOutlookTaskGroupTaskFolder -UserId $userId -OutlookTaskGroupId $outlookTaskGroupId -BodyParameter $params

```