---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	atAprovedLocation = $true
	notes = @{
		contentType = "text"
		content = "clock in notes"
	}
}

Invoke-MgBetaClockTeamScheduleTimeCardIn -TeamId $teamId -BodyParameter $params

```