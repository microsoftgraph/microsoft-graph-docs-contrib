---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	displayName = "Architecture Discussion"
	description = "This channel is where we debate all future architecture plans"
	membershipType = "standard"
}

New-MgBetaTeamChannel -TeamId $teamId -BodyParameter $params

```