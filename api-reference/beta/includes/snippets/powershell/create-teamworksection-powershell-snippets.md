---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	displayName = "Project Alpha"
	displayIcon = @{
		iconType = "🚀"
	}
	sortType = "mostRecent"
}

New-MgBetaUserTeamworkSection -UserId $userId -BodyParameter $params

```