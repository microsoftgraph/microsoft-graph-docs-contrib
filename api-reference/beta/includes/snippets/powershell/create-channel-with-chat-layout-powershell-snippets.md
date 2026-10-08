---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	displayName = "Project Collaboration"
	description = "Discussion space for project team collaboration"
	membershipType = "standard"
	layoutType = "chat"
}

New-MgBetaTeamChannel -TeamId $teamId -BodyParameter $params

```