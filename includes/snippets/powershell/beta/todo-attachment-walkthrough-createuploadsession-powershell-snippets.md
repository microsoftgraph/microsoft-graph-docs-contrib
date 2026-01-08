---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	attachmentInfo = @{
		attachmentType = "file"
		name = "flower"
		size = 3483322
	}
}

# A UPN can also be used as -UserId.
New-MgBetaUserTodoListTaskAttachmentUploadSession -UserId $userId -TodoTaskListId $todoTaskListId -TodoTaskId $todoTaskId -BodyParameter $params

```