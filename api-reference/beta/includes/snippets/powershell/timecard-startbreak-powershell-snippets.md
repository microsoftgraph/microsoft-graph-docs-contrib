---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	AtAprovedLocation = $true
	Notes = @{
		ContentType = "text"
		Content = "start break smaple notes"
	}
}

Start-MgTeamScheduleTimeCardBreak -TeamId $teamId -TimeCardId $timeCardId -BodyParameter $params

```