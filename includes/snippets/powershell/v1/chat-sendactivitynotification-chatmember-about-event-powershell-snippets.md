---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	topic = @{
		source = "text"
		value = "Weekly Virtual Social"
		webUrl = "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
	}
	previewText = @{
		content = "It will be fun!"
	}
	activityType = "eventCreated"
	recipient = @{
		"@odata.type" = "microsoft.graph.chatMembersNotificationRecipient"
		chatId = "19:d65713bc498c4a428c71ef9353e6ce20@thread.v2"
	}
}

Send-MgChatActivityNotification -ChatId $chatId -BodyParameter $params

```