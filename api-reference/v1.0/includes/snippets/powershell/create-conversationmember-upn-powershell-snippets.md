---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"@odata.type" = "#microsoft.graph.aadUserConversationMember"
	roles = @(
		"owner"
	)
	"user@odata.bind" = "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')"
}

New-MgTeamMember -TeamId $teamId -BodyParameter $params

```