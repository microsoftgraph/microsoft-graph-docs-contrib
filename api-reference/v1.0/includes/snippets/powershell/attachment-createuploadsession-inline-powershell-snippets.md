---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	AttachmentItem = @{
		attachmentType = "file"
		name = "scenary"
		size = 7208534
		isInline = $true
		contentId = "my_inline_picture"
	}
}

# A UPN can also be used as -UserId.
New-MgUserMessageAttachmentUploadSession -UserId $userId -MessageId $messageId -BodyParameter $params

```