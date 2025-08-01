---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	users = @(
		@{
			"@odata.type" = "microsoft.graph.emailIdentity"
			email = "LauraW@contoso.com"
		}
	)
	interactionType = "createChat"
}

Invoke-MgBetaDetermineTeamworkIfInteractionIsAllowed -BodyParameter $params

```