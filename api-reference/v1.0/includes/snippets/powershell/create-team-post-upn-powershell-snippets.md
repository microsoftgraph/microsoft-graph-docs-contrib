---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"template@odata.bind" = "https://graph.microsoft.com/v1.0/teamsTemplates('standard')"
	displayName = "My Sample Team"
	description = "My Sample Team’s Description"
	members = @(
		@{
			"@odata.type" = "#microsoft.graph.aadUserConversationMember"
			roles = @(
				"owner"
			)
			"user@odata.bind" = "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')"
		}
	)
}

New-MgTeam -BodyParameter $params

```