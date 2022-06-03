---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	DestinationTaskListId = "AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFsPFj7gQqFxG"
}

# A UPN can also be used as -UserId.
Move-MgUserTaskListTask -UserId $userId -BaseTaskListId $baseTaskListId -BaseTaskId $baseTaskId -BodyParameter $params

```