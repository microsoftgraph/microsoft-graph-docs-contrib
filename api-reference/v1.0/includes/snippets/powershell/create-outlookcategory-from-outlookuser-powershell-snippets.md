---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	DisplayName = "Project expenses"
	Color = "preset9"
}

New-MgUserOutlookMasterCategory -UserId $userId -BodyParameter $params

```