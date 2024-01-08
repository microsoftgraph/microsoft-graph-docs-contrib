---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	"@odata.type" = "microsoft.graph.fileAttachment"
	name = "name-value"
	contentType = "contentType-value"
	isInline = $false
	contentLocation = "contentLocation-value"
	contentBytes = "base64-contentBytes-value"
}

# A UPN can also be used as -UserId.
New-MgUserMessageAttachment -UserId $userId -MessageId $messageId -BodyParameter $params

```