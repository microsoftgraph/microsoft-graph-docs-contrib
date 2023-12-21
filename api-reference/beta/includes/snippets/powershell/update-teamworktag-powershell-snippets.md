---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	displayName = "Finance"
}

Update-MgBetaTeamTag -TeamId $teamId -TeamworkTagId $teamworkTagId -BodyParameter $params

```