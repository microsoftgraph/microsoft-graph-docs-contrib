---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	displayName = "UpdateChannelModeration"
	description = "Update channel moderation."
	moderationSettings = @{
		userNewMessageRestriction = "moderators"
		replyRestriction = "everyone"
		allowNewMessageFromBots = $true
		allowNewMessageFromConnectors = $true
	}
}

Update-MgTeamChannel -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```