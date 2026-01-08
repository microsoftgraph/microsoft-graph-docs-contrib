---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"template@odata.bind" = "https://graph.microsoft.com/v1.0/teamsTemplates('standard')"
	displayName = "My Sample Team"
	description = "My sample team’s description"
	firstChannelName = "My first channel of the sample team"
}

New-MgTeam -BodyParameter $params

```