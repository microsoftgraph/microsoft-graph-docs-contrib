---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	displayName = "Important Conversations"
}

Update-MgBetaUserTeamworkSection -UserId $userId -TeamworkSectionId $teamworkSectionId -BodyParameter $params

```