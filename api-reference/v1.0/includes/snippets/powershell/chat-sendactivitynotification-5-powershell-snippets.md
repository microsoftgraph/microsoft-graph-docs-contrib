---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Topic = @{
		Source = "entityUrl"
		Value = "https://graph.microsoft.com/v1.0/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2"
	}
	ActivityType = "taskCreated"
	PreviewText = @{
		Content = "New Task Created"
	}
	Recipient = @{
		"@odata.type" = "microsoft.graph.chatMembersNotificationRecipient"
		ChatId = "19:1c3af46e9e0f4a5293343c8813c47619@thread.v2"
	}
	TemplateParameters = @(
		@{
			Name = "taskId"
			Value = "Task 12322"
		}
	)
}

Send-MgChatActivityNotification -ChatId $chatId -BodyParameter $params

```