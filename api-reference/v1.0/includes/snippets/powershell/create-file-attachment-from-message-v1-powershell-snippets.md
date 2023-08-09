---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	"@odata.type" = "#microsoft.graph.fileAttachment"
	name = "smile"
	contentBytes = "R0lGODdhEAYEAA7"
}

# A UPN can also be used as -UserId.
New-MgUserMessageAttachment -UserId $userId -MessageId $messageId -BodyParameter $params

```