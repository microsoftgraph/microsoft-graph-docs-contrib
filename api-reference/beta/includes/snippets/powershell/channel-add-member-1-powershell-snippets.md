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
"user@odata.bind" = "https://graph.microsoft.com/beta/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')"
}

New-MgBetaTeamChannelMember -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```