---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	DisplayName = "Travel items"
}

New-MgUserTodoList -UserId $userId -BodyParameter $params

```