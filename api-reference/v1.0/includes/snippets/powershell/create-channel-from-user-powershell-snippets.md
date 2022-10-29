---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"@odata.type" = "#Microsoft.Graph.channel"
	MembershipType = "private"
	DisplayName = "My First Private Channel"
	Description = "This is my first private channels"
	Members = @(
		@{
			"@odata.type" = "#microsoft.graph.aadUserConversationMember"
			"User@odata.bind" = "https://graph.microsoft.com/v1.0/users('62855810-484b-4823-9e01-60667f8b12ae')"
			Roles = @(
				"owner"
			)
		}
	)
}

New-MgTeamChannel -TeamId $teamId -BodyParameter $params

```