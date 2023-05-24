---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	title = "A new task"
	categories = @(
		"Important"
	)
	linkedResources = @(
		@{
			webUrl = "http://microsoft.com"
			applicationName = "Microsoft"
			displayName = "Microsoft"
		}
	)
}

# A UPN can also be used as -UserId.
New-MgUserTodoListTask -UserId $userId -TodoTaskListId $todoTaskListId -BodyParameter $params

```