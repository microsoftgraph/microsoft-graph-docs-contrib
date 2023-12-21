---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"@odata.type" = "#microsoft.graph.aadUserConversationMember"
	"user@odata.bind" = "https://graph.microsoft.com/v1.0/users/82af01c5-f7cc-4a2e-a728-3a5df21afd9d"
	roles = @(
		"owner"
	)
	tenantId = "4dc1fe35-8ac6-4f0d-904a-7ebcd364bea1"
}

New-MgChatMember -ChatId $chatId -BodyParameter $params

```