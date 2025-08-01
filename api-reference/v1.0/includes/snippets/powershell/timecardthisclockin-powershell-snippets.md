---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	isAtApprovedLocation = $true
	notes = @{
		content = "Started late due to traffic"
		contentType = "text"
	}
}

Invoke-MgClockTeamScheduleTimeCardIn -TeamId $teamId -BodyParameter $params

```