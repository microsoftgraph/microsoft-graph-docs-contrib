---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	messageIds = @(
	"1728088338580"
)
replyMessage = @{
	body = @{
		content = "Hello World"
	}
}
}

Invoke-MgBetaGraphChatMessage -ChatId $chatId -BodyParameter $params

```