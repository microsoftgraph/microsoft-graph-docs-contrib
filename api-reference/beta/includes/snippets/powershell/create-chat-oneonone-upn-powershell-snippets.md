---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	chatType = "oneOnOne"
	members = @(
		@{
			"@odata.type" = "#microsoft.graph.aadUserConversationMember"
			roles = @(
				"owner"
			)
			"user@odata.bind" = "https://graph.microsoft.com/beta/users('jacob@contoso.com')"
		}
		@{
			"@odata.type" = "#microsoft.graph.aadUserConversationMember"
			roles = @(
				"owner"
			)
			"user@odata.bind" = "https://graph.microsoft.com/beta/users('alex@contoso.com')"
		}
	)
}

New-MgChat -BodyParameter $params

```