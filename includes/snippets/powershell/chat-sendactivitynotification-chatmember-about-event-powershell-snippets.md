---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Topic = @{
		Source = "text"
		Value = "Weekly Virtual Social"
		WebUrl = "Teams webUrl"
	}
	PreviewText = @{
		Content = "It will be fun!"
	}
	ActivityType = "eventCreated"
	Recipient = @{
		"@odata.type" = "microsoft.graph.chatMembersNotificationRecipient"
		ChatId = "19:d65713bc498c4a428c71ef9353e6ce20@thread.v2"
	}
}

Send-MgChatActivityNotification -ChatId $chatId -BodyParameter $params

```