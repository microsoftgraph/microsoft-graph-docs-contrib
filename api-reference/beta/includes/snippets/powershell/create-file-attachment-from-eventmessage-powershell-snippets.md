---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	"@odata.type" = "#Microsoft.OutlookServices.FileAttachment"
	Name = "name-value"
	ContentType = "contentType-value"
	IsInline = $false
	ContentLocation = "contentLocation-value"
	ContentBytes = "contentBytes-value"
}

New-MgUserMessageAttachment -UserId $userId -MessageId $messageId -BodyParameter $params

```