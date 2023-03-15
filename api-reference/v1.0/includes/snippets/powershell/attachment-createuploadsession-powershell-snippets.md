---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	AttachmentItem = @{
		AttachmentType = "file"
		Name = "flower"
		Size = 3483322
	}
}

# A UPN can also be used as -UserId.
New-MgUserMessageAttachmentUploadSession -UserId $userId -MessageId $messageId -BodyParameter $params

```