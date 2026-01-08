---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	isAtApprovedLocation = $true
	onBehalfOfUserId = "3f29c8e7-7a41-4d8e-99d6-2b1f76c9421e"
}

Invoke-MgBetaClockTeamScheduleTimeCardIn -TeamId $teamId -BodyParameter $params

```