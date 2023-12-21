---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	post = @{
		body = @{
			contentType = ""
			content = "content-value"
		}
		receivedDateTime = [System.DateTime]::Parse("datetime-value")
		hasAttachments = $true
		from = @{
			emailAddress = @{
				name = "name-value"
				address = "address-value"
			}
		}
		sender = @{
			emailAddress = @{
				name = "name-value"
				address = "address-value"
			}
		}
		conversationThreadId = "conversationThreadId-value"
		newParticipants = @(
			@{
				emailAddress = @{
					name = "name-value"
					address = "address-value"
				}
			}
		)
		conversationId = "conversationId-value"
		createdDateTime = [System.DateTime]::Parse("datetime-value")
		lastModifiedDateTime = [System.DateTime]::Parse("datetime-value")
		changeKey = "changeKey-value"
		categories = @(
			"categories-value"
		)
		id = "id-value"
		inReplyTo = @{
		}
		attachments = @(
			@{
				"@odata.type" = "#microsoft.graph.fileAttachment"
				lastModifiedDateTime = [System.DateTime]::Parse("datetime-value")
				name = "name-value"
				contentType = "contentType-value"
				size = 99
				isInline = $true
				id = "id-value"
			}
		)
	}
}

Invoke-MgReplyGroupThreadPost -GroupId $groupId -ConversationThreadId $conversationThreadId -PostId $postId -BodyParameter $params

```