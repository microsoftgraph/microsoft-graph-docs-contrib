---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	displayName = "Vacation"
	code = "VacationCode"
	iconType = "plane"
	isActive = $true
}

New-MgBetaTeamScheduleTimeOffReason -TeamId $teamId -BodyParameter $params

```