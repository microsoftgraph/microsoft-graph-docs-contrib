---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Enabled = $true
	TimeZone = "America/Chicago"
}

Set-MgTeamSchedule -TeamId $teamId -BodyParameter $params

```