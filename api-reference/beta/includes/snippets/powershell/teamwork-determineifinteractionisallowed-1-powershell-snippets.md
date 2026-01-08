---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	users = @(
		@{
			"@odata.type" = "microsoft.graph.teamworkUserIdentity"
			id = "59b5bc69-ca73-4ffd-a2e0-88a79115d13b"
		}
	)
	interactionType = "createChat"
}

Invoke-MgBetaDetermineTeamworkIfInteractionIsAllowed -BodyParameter $params

```