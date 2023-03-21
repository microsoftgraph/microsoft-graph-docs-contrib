---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"@microsoft.graph.channelCreationMode" = "migration"
	DisplayName = "Import_150958_99z"
	Description = "Import_150958_99z"
	CreatedDateTime = [System.DateTime]::Parse("2020-03-14T11:22:17.067Z")
}

New-MgTeamChannel -TeamId $teamId -BodyParameter $params

```