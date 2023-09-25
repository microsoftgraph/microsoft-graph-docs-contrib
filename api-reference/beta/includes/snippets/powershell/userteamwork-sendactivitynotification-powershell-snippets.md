---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	topic = @{
		source = "entityUrl"
		value = "https://graph.microsoft.com/beta/users/{userId}/teamwork/installedApps/{installationId}"
	}
	activityType = "taskCreated"
	previewText = @{
		content = "New Task Created"
	}
	templateParameters = @(
		@{
			name = "taskId"
			value = "Task 12322"
		}
	)
}

Send-MgBetaUserTeamworkActivityNotification -UserId $userId -BodyParameter $params

```