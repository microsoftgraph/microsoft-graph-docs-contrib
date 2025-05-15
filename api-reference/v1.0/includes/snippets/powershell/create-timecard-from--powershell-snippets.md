---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	clockInEvent = @{
		dateTime = [System.DateTime]::Parse("2025-01-07T21:00:00.000Z")
		isAtApprovedLocation = $true
		notes = @{
			content = "Started late due to traffic in CA 237"
			contentType = "text"
		}
	}
	clockOutEvent = @{
		dateTime = [System.DateTime]::Parse("2025-01-07T21:30:00.000Z")
		isAtApprovedLocation = $true
	}
}

New-MgTeamScheduleTimeCard -TeamId $teamId -BodyParameter $params

```