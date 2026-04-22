---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	layoutType = "chat"
}

Update-MgTeamChannel -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```