---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	AttachmentInfo = @{
		AttachmentType = "file"
		Name = "flower"
		Size = 3483322
	}
}

# A UPN can also be used as -UserId.
New-MgUserTodoListTaskAttachmentUploadSession -UserId $userId -TodoTaskListId $todoTaskListId -TodoTaskId $todoTaskId -BodyParameter $params

```