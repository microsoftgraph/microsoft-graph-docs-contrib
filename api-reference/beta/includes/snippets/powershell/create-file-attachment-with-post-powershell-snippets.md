---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	post = @{
		body = @{
			contentType = "text"
			content = "Which quarter does that file cover? See my attachment."
		}
		attachments = @(
			@{
				"@odata.type" = "#microsoft.graph.fileAttachment"
				name = "Another file as attachment"
				contentBytes = "VGhpcyBpcyBhIGZpbGUgdG8gYmUgYXR0YWNoZWQu"
			}
		)
	}
}

Invoke-MgBetaReplyGroupThread -GroupId $groupId -ConversationThreadId $conversationThreadId -BodyParameter $params

```