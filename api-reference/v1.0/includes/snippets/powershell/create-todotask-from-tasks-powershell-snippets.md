---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	Title = "A new task"
	LinkedResources = @(
		@{
			WebUrl = "http://microsoft.com"
			ApplicationName = "Microsoft"
			DisplayName = "Microsoft"
		}
	)
}

New-MgUserTodoListTask -UserId $userId -TodoTaskListId $todoTaskListId -BodyParameter $params

```