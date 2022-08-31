---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	DisplayName = "UpdateChannelModeration"
	Description = "Update channel moderation."
	ModerationSettings = @{
		UserNewMessageRestriction = "moderators"
		ReplyRestriction = "everyone"
		AllowNewMessageFromBots = $true
		AllowNewMessageFromConnectors = $true
	}
}

Update-MgTeamChannel -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```