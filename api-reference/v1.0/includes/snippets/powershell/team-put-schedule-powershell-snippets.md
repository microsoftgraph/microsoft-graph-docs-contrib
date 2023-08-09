---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	enabled = $true
	timeZone = "America/Chicago"
}

Set-MgTeamSchedule -TeamId $teamId -BodyParameter $params

```