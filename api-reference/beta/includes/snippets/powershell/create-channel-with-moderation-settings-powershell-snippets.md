---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

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

New-MgBetaTeamChannel -TeamId $teamId -BodyParameter $params

```