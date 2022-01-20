---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	"@odata.type" = "#microsoft.graph.fileAttachment"
	Name = "smile"
	ContentBytes = "a0b1c76de9f7="
}

New-MgUserMessageAttachment -UserId $userId -MessageId $messageId -BodyParameter $params

```