---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Post = @{
		Body = @{
			ContentType = ""
			Content = "content-value"
		}
		ReceivedDateTime = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
		HasAttachments = $true
		From = @{
			EmailAddress = @{
				Name = "name-value"
				Address = "address-value"
			}
		}
		Sender = @{
			EmailAddress = @{
				Name = "name-value"
				Address = "address-value"
			}
		}
		ConversationThreadId = "conversationThreadId-value"
		NewParticipants = @(
			@{
				EmailAddress = @{
					Name = "name-value"
					Address = "address-value"
				}
			}
		)
		ConversationId = "conversationId-value"
		CreatedDateTime = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
		LastModifiedDateTime = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
		ChangeKey = "changeKey-value"
		Categories = @(
			"categories-value"
		)
		Id = "id-value"
		InReplyTo = @{
		}
		Attachments = @(
			@{
				"@odata.type" = "#microsoft.graph.fileAttachment"
				LastModifiedDateTime = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
				Name = "name-value"
				ContentType = "contentType-value"
				Size = 99
				IsInline = $true
				Id = "id-value"
			}
		)
	}
}

Invoke-MgReplyGroupThreadPost -GroupId $groupId -ConversationThreadId $conversationThreadId -PostId $postId -BodyParameter $params

```