---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	name = "Cooking"
}

# A UPN can also be used as -UserId.
New-MgBetaUserOutlookTaskGroupTaskFolder -UserId $userId -OutlookTaskGroupId $outlookTaskGroupId -BodyParameter $params

```