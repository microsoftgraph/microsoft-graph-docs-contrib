---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	topic = @{
		source = "entityUrl"
		value = "https://graph.microsoft.com/v1.0/users/{userId}/teamwork/installedApps/{installationId}"
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

Send-MgUserTeamworkActivityNotification -UserId $userId -BodyParameter $params

```