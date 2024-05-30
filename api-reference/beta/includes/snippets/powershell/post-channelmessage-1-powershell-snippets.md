---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	body = @{
		content = "Hello World"
	}
}

New-MgBetaTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```