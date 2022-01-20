---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	DisplayName = "Vacation Plan"
}

Update-MgUserTodoList -UserId $userId -TodoTaskListId $todoTaskListId -BodyParameter $params

```