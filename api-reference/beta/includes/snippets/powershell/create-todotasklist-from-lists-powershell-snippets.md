---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	displayName = "Travel items"
}

# A UPN can also be used as -UserId.
New-MgBetaUserTodoList -UserId $userId -BodyParameter $params

```