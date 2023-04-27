---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	"@odata.type" = "#microsoft.graph.aadUserConversationMember"
	roles = @(
		"owner"
	)
}

Update-MgTeamMember -TeamId $teamId -ConversationMemberId $conversationMemberId -BodyParameter $params

```