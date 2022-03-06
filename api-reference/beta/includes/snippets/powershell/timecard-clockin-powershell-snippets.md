---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	AtAprovedLocation = $true
	Notes = @{
		ContentType = "text"
		Content = "clock in notes"
	}
}

Invoke-MgClockTeamScheduleTimeCardIn -TeamId $teamId -BodyParameter $params

```