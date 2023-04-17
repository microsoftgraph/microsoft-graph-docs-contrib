---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"template@odata.bind" = "https://graph.microsoft.com/beta/teamsTemplates('standard')"
	displayName = "My Sample Team"
	description = "My Sample Team’s Description"
}

New-MgTeam -BodyParameter $params

```