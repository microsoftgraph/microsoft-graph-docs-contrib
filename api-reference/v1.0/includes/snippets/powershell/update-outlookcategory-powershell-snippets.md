---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	color = "preset15"
}

# A UPN can also be used as -UserId.
Update-MgUserOutlookMasterCategory -UserId $userId -OutlookCategoryId $outlookCategoryId -BodyParameter $params

```