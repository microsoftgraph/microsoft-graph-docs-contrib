---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"Template@odata.bind" = "https://graph.microsoft.com/beta/teamsTemplates('standard')"
	"Group@odata.bind" = "https://graph.microsoft.com/beta/groups('71392b2f-1765-406e-86af-5907d9bdb2ab')"
}

New-MgTeam -BodyParameter $params

```