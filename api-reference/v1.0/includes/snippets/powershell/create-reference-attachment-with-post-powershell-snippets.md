---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	post = @{
		body = @{
			contentType = "text"
			content = "I attached a reference to a file on OneDrive."
		}
		attachments = @(
			@{
				"@odata.type" = "#microsoft.graph.referenceAttachment"
				name = "Personal pictures"
				sourceUrl = "https://contoso.com/personal/mario_contoso_net/Documents/Pics"
				providerType = "oneDriveConsumer"
				permission = "Edit"
				isFolder = "True"
			}
		)
	}
}

Invoke-MgReplyGroupThread -GroupId $groupId -ConversationThreadId $conversationThreadId -BodyParameter $params

```