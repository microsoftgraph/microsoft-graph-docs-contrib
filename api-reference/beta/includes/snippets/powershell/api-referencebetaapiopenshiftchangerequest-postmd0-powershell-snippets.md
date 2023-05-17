---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	senderMessage = "Can I take this shift?"
	openShiftId = "577b75d2-a927-48c0-a5d1-dc984894e7b8"
}

New-MgTeamScheduleOpenShiftChangeRequest -TeamId $teamId -BodyParameter $params

```