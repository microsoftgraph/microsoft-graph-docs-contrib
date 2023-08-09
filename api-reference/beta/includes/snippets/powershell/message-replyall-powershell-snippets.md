---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	message = @{
		attachments = @(
			@{
				"@odata.type" = "#microsoft.graph.fileAttachment"
				name = "guidelines.txt"
				contentBytes = "bWFjIGFuZCBjaGVlc2UgdG9kYXk="
			}
		)
	}
	comment = "Please take a look at the attached guidelines before you decide on the name."
}

# A UPN can also be used as -UserId.
Invoke-MgBetaReplyAllUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```