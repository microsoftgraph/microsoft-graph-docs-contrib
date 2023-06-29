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
	}
}

Invoke-MgReplyGroupThread -GroupId $groupId -ConversationThreadId $conversationThreadId -BodyParameter $params

```