---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	Name = "Leisure tasks"
}

New-MgUserOutlookTaskGroup -UserId $userId -BodyParameter $params

```