---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	displayName = "Vacation"
	iconType = "plane"
	isActive = $true
	code = "VacationCode"
}

New-MgTeamScheduleTimeOffReason -TeamId $teamId -BodyParameter $params

```