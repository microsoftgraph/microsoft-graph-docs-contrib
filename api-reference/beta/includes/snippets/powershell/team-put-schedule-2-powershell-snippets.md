---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	enabled = $true
	timeZone = "America/Chicago"
	provisionStatus = "Completed"
	provisionStatusCode = $null
	openShiftsEnabled = $true
	swapShiftsRequestsEnabled = $true
	offerShiftRequestsEnabled = $true
	timeOffRequestsEnabled = $true
	startDayOfWeek = "Tuesday"
	isActivitiesIncludedWhenCopyingShiftsEnabled = $true
	isCrossLocationShiftsEnabled = $true
	isCrossLocationShiftRequestApprovalRequired = $true
	timeClockEnabled = $true
}

Set-MgBetaTeamSchedule -TeamId $teamId -BodyParameter $params

```