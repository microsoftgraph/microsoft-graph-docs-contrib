---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	post = @{
		body = @{
			contentType = "html"
			content = "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>"
		}
		extensions = @(
			@{
				"@odata.type" = "microsoft.graph.openTypeExtension"
				extensionName = "Com.Contoso.HR"
				companyName = "Contoso"
				expirationDate = "2015-07-03T13:04:00.000Z"
				topPicks = @(
					"Employees only"
					"Add spouse or guest"
					"Add family"
				)
			}
		)
	}
}

Invoke-MgBetaReplyGroupThreadPost -GroupId $groupId -ConversationThreadId $conversationThreadId -PostId $postId -BodyParameter $params

```