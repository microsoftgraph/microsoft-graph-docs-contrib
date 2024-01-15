---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	comment = "comment-value"
	toRecipients = @(
		@{
			emailAddress = @{
				name = "name-value"
				address = "address-value"
			}
		}
	)
}

Invoke-MgBetaForwardGroupThreadPost -GroupId $groupId -ConversationThreadId $conversationThreadId -PostId $postId -BodyParameter $params

```