---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	topic = @{
		source = "entityUrl"
		value = "https://graph.microsoft.com/beta/chats/{chatId}"
	}
	activityType = "taskCreated"
	previewText = @{
		content = "New Task Created"
	}
	recipient = @{
		"@odata.type" = "microsoft.graph.aadUserNotificationRecipient"
		userId = "569363e2-4e49-4661-87f2-16f245c5d66a"
	}
	templateParameters = @(
		@{
			name = "taskId"
			value = "Task 12322"
		}
	)
}

Send-MgChatActivityNotification -ChatId $chatId -BodyParameter $params

```