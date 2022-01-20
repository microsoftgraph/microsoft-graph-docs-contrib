---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"@odata.type" = "#microsoft.graph.aadUserConversationMember"
	"User@odata.bind" = "https://graph.microsoft.com/v1.0/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5"
	VisibleHistoryStartDateTime = [System.DateTime]::Parse("0001-01-01T00:00:00Z")
	Roles = @(
		"owner"
	)
}

New-MgChatMember -ChatId $chatId -BodyParameter $params

```