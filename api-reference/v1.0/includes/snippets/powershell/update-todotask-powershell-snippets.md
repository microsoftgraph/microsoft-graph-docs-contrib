---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	dueDateTime = @{
		dateTime = "2020-07-25T16:00:00"
		timeZone = "Eastern Standard Time"
	}
}

# A UPN can also be used as -UserId.
Update-MgUserTodoListTask -UserId $userId -TodoTaskListId $todoTaskListId -TodoTaskId $todoTaskId -BodyParameter $params

```