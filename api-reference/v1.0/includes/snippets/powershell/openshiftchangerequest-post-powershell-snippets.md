---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	senderUserId = "3fe0bc21-1398-4fd9-9713-52511b434c1e"
	senderMessage = "Can I take this shift?"
	openShiftId = "577b75d2-a927-48c0-a5d1-dc984894e7b8"
}

New-MgTeamScheduleOpenShiftChangeRequest -TeamId $teamId -BodyParameter $params

```