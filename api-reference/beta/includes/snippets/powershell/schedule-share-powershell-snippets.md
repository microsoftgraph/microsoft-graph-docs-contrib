---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	notifyTeam = $true
	startDateTime = [System.DateTime]::Parse("2018-10-08T00:00:00.000Z")
	endDateTime = [System.DateTime]::Parse("2018-10-15T00:00:00.000Z")
}

Invoke-MgBetaShareTeamSchedule -TeamId $teamId -BodyParameter $params

```