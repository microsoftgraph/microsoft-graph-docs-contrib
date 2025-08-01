---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

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