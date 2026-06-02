---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	displayName = "Project Collaboration"
	description = "Discussion space for project team collaboration"
	membershipType = "standard"
	layoutType = "chat"
}

New-MgTeamChannel -TeamId $teamId -BodyParameter $params

```