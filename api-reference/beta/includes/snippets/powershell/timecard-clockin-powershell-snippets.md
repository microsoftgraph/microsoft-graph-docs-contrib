---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	atAprovedLocation = $true
	notes = @{
		contentType = "text"
		content = "clock in notes"
	}
}

Invoke-MgClockTeamScheduleTimeCardIn -TeamId $teamId -BodyParameter $params

```