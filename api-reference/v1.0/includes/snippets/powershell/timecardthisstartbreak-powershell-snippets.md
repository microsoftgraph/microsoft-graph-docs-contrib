---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	isAtApprovedLocation = $true
	notes = @{
		content = "Starting break late to make up for late clockin"
		contentType = "text"
	}
}

Start-MgTeamScheduleTimeCardBreak -TeamId $teamId -TimeCardId $timeCardId -BodyParameter $params

```