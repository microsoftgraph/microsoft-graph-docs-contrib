---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	post = @{
		body = @{
			contentType = "text"
			content = "I attached an event."
		}
		attachments = @(
			@{
				"@odata.type" = "#microsoft.graph.itemAttachment"
				name = "Holiday event"
				item = @{
					"@odata.type" = "microsoft.graph.event"
					subject = "Discuss gifts for children"
				}
			}
		)
	}
}

Invoke-MgBetaReplyGroupThread -GroupId $groupId -ConversationThreadId $conversationThreadId -BodyParameter $params

```