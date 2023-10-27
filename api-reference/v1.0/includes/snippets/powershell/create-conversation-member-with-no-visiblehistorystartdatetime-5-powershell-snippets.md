---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"@odata.type" = "#microsoft.graph.aadUserConversationMember"
	"user@odata.bind" = "https://graph.microsoft.com/v1.0/users/8ba98gf6-7fc2-4eb2-c7f2-aef9f21fd98g"
	roles = @(
		"guest"
	)
}

New-MgChatMember -ChatId $chatId -BodyParameter $params

```