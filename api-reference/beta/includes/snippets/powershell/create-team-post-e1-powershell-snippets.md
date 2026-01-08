---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	"template@odata.bind" = "https://graph.microsoft.com/beta/teamsTemplates('standard')"
	displayName = "My Sample Team"
	description = "My sample team's description"
	firstChannelName = "My first channel of the sample team"
}

New-MgBetaTeam -BodyParameter $params

```