---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

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
	comment = "if the project gets approved, please take a look at the attached guidelines before you decide on the name."
}

# A UPN can also be used as -UserId.
New-MgUserMessageReplyAll -UserId $userId -MessageId $messageId -BodyParameter $params

```