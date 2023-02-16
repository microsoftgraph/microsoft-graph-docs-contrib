---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Post = @{
		Body = @{
			ContentType = "text"
			Content = "I attached a reference to a file on OneDrive."
		}
		Attachments = @(
			@{
				"@odata.type" = "#microsoft.graph.referenceAttachment"
				Name = "Personal pictures"
				SourceUrl = "https://contoso.com/personal/mario_contoso_net/Documents/Pics"
				ProviderType = "oneDriveConsumer"
				Permission = "Edit"
				IsFolder = "True"
			}
		)
	}
}

Invoke-MgReplyGroupThread -GroupId $groupId -ConversationThreadId $conversationThreadId -BodyParameter $params

```