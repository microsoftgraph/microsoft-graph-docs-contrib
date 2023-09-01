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
}

Update-MgBetaTeamMember -TeamId $teamId -ConversationMemberId $conversationMemberId -BodyParameter $params

```