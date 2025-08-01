---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	isAtApprovedLocation = $true
	notes = @{
		contentType = "text"
		content = "clocking out"
	}
}

Invoke-MgClockTeamScheduleTimeCardOut -TeamId $teamId -TimeCardId $timeCardId -BodyParameter $params

```