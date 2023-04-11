---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	DisplayName = "My First Shared Channel"
	Description = "This is my first shared channel"
	MembershipType = "shared"
	Members = @(
		@{
			"@odata.type" = "#microsoft.graph.aadUserConversationMember"
			"User@odata.bind" = "https://graph.microsoft.com/v1.0/users('7640023f-fe43-573f-9ff4-84a9efe4acd6')"
			Roles = @(
				"owner"
			)
		}
	)
}

New-MgTeamChannel -TeamId $teamId -BodyParameter $params

```