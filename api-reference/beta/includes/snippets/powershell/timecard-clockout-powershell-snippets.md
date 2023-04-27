---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	atAprovedLocation = $true
	notes = @{
		contentType = "text"
		content = "clock out smaple notes"
	}
}

Invoke-MgClockTeamScheduleTimeCardOut -TeamId $teamId -TimeCardId $timeCardId -BodyParameter $params

```