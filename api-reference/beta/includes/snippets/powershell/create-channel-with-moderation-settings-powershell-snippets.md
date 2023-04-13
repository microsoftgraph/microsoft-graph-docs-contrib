---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	DisplayName = "TestChannelModeration"
	Description = "Test channel moderation."
	MembershipType = "standard"
	ModerationSettings = @{
		UserNewMessageRestriction = "everyoneExceptGuests"
		ReplyRestriction = "everyone"
		AllowNewMessageFromBots = $true
		AllowNewMessageFromConnectors = $true
	}
}

New-MgTeamChannel -TeamId $teamId -BodyParameter $params

```