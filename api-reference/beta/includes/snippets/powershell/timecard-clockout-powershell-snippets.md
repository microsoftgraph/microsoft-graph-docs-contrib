---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	AtAprovedLocation = $true
	Notes = @{
		ContentType = "text"
		Content = "clock out smaple notes"
	}
}

Invoke-MgClockTeamScheduleTimeCardOut -TeamId $teamId -TimeCardId $timeCardId -BodyParameter $params

```