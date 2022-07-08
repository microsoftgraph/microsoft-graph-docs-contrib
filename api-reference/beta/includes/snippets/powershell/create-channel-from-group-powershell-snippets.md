---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	DisplayName = "Architecture Discussion"
	Description = "This channel is where we debate all future architecture plans"
	MembershipType = "standard"
}

New-MgTeamChannel -TeamId $teamId -BodyParameter $params

```