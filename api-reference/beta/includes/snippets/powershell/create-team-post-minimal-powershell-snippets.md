---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"Template@odata.bind" = "https://graph.microsoft.com/beta/teamsTemplates('standard')"
	DisplayName = "My Sample Team"
	Description = "My Sample Team’s Description"
	Members = @(
		@{
			"@odata.type" = "#microsoft.graph.aadUserConversationMember"
			Roles = @(
				"owner"
			)
			"User@odata.bind" = "https://graph.microsoft.com/beta/users('0040b377-61d8-43db-94f5-81374122dc7e')"
		}
	)
}

New-MgTeam -BodyParameter $params

```