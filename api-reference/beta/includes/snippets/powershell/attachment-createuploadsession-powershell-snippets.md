---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	AttachmentItem = @{
		attachmentType = "file"
		name = "flower"
		size = 3483322
	}
}

# A UPN can also be used as -UserId.
New-MgBetaUserMessageAttachmentUploadSession -UserId $userId -MessageId $messageId -BodyParameter $params

```