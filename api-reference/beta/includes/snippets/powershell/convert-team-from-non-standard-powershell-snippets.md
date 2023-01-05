---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"Template@odata.bind" = "https://graph.microsoft.com/beta/teamsTemplates('educationClass')"
	DisplayName = "My Class Team"
	Description = "My Class Team’s Description"
}

New-MgTeam -BodyParameter $params

```