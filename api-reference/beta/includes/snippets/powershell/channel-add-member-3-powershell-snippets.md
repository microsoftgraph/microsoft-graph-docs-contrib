---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	"@odata.type" = "#microsoft.graph.aadUserConversationMember"
	roles = @(
		"owner"
	)
	"user@odata.bind" = "https://graph.microsoft.com/beta/users('jacob@contoso.com')"
}

New-MgBetaTeamChannelMember -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```