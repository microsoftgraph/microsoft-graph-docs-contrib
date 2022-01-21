---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	Name = "Volunteer"
}

New-MgUserOutlookTaskFolder -UserId $userId -BodyParameter $params

```