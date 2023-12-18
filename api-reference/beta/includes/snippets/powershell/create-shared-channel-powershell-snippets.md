---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	displayName = "My First Shared Channel"
	description = "This is my first shared channel"
	membershipType = "shared"
	members = @(
		@{
			"@odata.type" = "#microsoft.graph.aadUserConversationMember"
			"user@odata.bind" = "https://graph.microsoft.com/beta/users('7640023f-fe43-gv3f-9gg4-84a9efe4acd6')"
			roles = @(
				"owner"
			)
		}
	)
}

New-MgBetaTeamChannel -TeamId $teamId -BodyParameter $params

```