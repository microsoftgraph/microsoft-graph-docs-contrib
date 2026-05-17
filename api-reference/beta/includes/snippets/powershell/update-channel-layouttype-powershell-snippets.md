---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	layoutType = "chat"
}

Update-MgBetaTeamChannel -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```