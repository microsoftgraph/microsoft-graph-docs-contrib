---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	isAtApprovedLocation = $true
	notes = @{
		contentType = "text"
		content = "clocking in"
	}
}

Invoke-MgBetaClockTeamScheduleTimeCardIn -TeamId $teamId -BodyParameter $params

```