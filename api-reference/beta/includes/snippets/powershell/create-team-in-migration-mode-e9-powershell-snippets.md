---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"@microsoft.graph.teamCreationMode" = "migration"
	"template@odata.bind" = "https://graph.microsoft.com/beta/teamsTemplates('standard')"
	displayName = "My Sample Team"
	description = "My Sample Team’s Description"
	createdDateTime = [System.DateTime]::Parse("2020-03-14T11:22:17.067Z")
}

New-MgTeam -BodyParameter $params

```