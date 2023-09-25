---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	displayName = "Vacation Plan"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserTodoList -UserId $userId -TodoTaskListId $todoTaskListId -BodyParameter $params

```