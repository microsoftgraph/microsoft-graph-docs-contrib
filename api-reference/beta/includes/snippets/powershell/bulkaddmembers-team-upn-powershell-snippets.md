---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Values = @(
		@{
			"@odata.type" = "microsoft.graph.aadUserConversationMember"
			Roles = @(
			)
			"User@odata.bind" = "https://graph.microsoft.com/beta/users('jacob@contoso.com')"
		}
		@{
			"@odata.type" = "microsoft.graph.aadUserConversationMember"
			Roles = @(
				"owner"
			)
			"User@odata.bind" = "https://graph.microsoft.com/beta/users('alex@contoso.com')"
		}
	)
}

Add-MgTeamMember -TeamId $teamId -BodyParameter $params

```