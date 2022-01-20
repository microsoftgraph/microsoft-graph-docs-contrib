---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Notes

$params = @{
	DisplayName = "My Private notebook"
}

New-MgUserOnenoteNotebook -UserId $userId -BodyParameter $params

```