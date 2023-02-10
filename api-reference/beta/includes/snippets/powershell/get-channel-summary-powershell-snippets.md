---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Select = @(
		"Summary"
	)
}

Get-MgTeamChannel -TeamId $teamId -ChannelId $channelId $params

```