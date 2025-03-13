---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

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

Invoke-MgForwardGroupThreadPost -GroupId $groupId -ConversationThreadId $conversationThreadId -PostId $postId -BodyParameter $params

```