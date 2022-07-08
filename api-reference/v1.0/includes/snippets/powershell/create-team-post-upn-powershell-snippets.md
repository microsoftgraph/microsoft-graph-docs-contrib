---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"Template@odata.bind" = "https://graph.microsoft.com/v1.0/teamsTemplates('standard')"
	DisplayName = "My Sample Team"
	Description = "My Sample Team’s Description"
	Members = @(
		@{
			"@odata.type" = "#microsoft.graph.aadUserConversationMember"
			Roles = @(
				"owner"
			)
			"User@odata.bind" = "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')"
		}
	)
}

New-MgTeam -BodyParameter $params

```