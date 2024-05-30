---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	"@odata.type" = "#microsoft.graph.taskFileAttachment"
	name = "smile"
	contentBytes = "a0b1c76de9f7="
	contentType = "image/gif"
}

# A UPN can also be used as -UserId.
New-MgBetaUserTodoListTaskAttachment -UserId $userId -TodoTaskListId $todoTaskListId -TodoTaskId $todoTaskId -BodyParameter $params

```