---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"template@odata.bind" = "https://graph.microsoft.com/beta/teamsTemplates('educationClass')"
	displayName = "My Class Team"
	description = "My Class Team’s Description"
}

New-MgTeam -BodyParameter $params

```