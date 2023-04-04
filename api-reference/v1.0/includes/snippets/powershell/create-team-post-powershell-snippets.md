---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"Template@odata.bind" = "https://graph.microsoft.com/v1.0/teamsTemplates('standard')"
	DisplayName = "My Sample Team"
	Description = "My Sample Team’s Description"
}

New-MgTeam -BodyParameter $params

```