---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	displayName = "TestChannelModeration"
	description = "Test channel moderation."
	membershipType = "standard"
	moderationSettings = @{
		userNewMessageRestriction = "everyoneExceptGuests"
		replyRestriction = "everyone"
		allowNewMessageFromBots = $true
		allowNewMessageFromConnectors = $true
	}
}

New-MgTeamChannel -TeamId $teamId -BodyParameter $params

```