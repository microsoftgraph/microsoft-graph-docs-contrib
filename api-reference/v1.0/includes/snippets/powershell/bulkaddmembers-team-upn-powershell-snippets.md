---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	values = @(
		@{
			"@odata.type" = "microsoft.graph.aadUserConversationMember"
			roles = @(
			)
			"user@odata.bind" = "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')"
		}
		@{
			"@odata.type" = "microsoft.graph.aadUserConversationMember"
			roles = @(
				"owner"
			)
			"user@odata.bind" = "https://graph.microsoft.com/v1.0/users('alex@contoso.com')"
		}
	)
}

Add-MgTeamMember -TeamId $teamId -BodyParameter $params

```