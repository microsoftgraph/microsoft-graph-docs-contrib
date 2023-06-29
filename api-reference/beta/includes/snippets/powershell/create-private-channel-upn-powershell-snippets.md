---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"@odata.type" = "#Microsoft.Graph.channel"
	membershipType = "private"
	displayName = "My First Private Channel"
	description = "This is my first private channels"
	members = @(
		@{
			"@odata.type" = "#microsoft.graph.aadUserConversationMember"
			"user@odata.bind" = "https://graph.microsoft.com/beta/users('jacob@contoso.com')"
			roles = @(
				"owner"
			)
		}
	)
}

New-MgTeamChannel -TeamId $teamId -BodyParameter $params

```