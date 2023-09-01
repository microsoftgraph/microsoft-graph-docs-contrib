---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	userId = "97f62344-57dc-409c-88ad-c4af14158ff5"
}

New-MgTeamTagMember -TeamId $teamId -TeamworkTagId $teamworkTagId -BodyParameter $params

```