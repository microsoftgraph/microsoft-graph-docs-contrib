---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	"@odata.type" = "#microsoft.graph.linkedResource"
	webUrl = "http://microsoft.com"
	applicationName = "Microsoft"
	displayName = "Microsoft"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserTodoListTaskLinkedResource -UserId $userId -TodoTaskListId $todoTaskListId -TodoTaskId $todoTaskId -LinkedResourceId $linkedResourceId -BodyParameter $params

```