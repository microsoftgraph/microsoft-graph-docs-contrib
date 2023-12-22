---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

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

Update-MgBetaTeamChannel -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```