---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	isLocked = $true
}

Update-MgBetaGroupThread -GroupId $groupId -ConversationThreadId $conversationThreadId -BodyParameter $params

```