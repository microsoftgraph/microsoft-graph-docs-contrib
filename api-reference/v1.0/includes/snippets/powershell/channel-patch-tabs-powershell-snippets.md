---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	displayName = "My Contoso Tab - updated"
}

Update-MgTeamChannelTab -TeamId $teamId -ChannelId $channelId -TeamsTabId $teamsTabId -BodyParameter $params

```