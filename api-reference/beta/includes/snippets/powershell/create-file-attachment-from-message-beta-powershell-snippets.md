---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	"@odata.type" = "#microsoft.graph.fileAttachment"
	name = "smile"
	contentBytes = "a0b1c76de9f7="
}

# A UPN can also be used as -UserId.
New-MgBetaUserMessageAttachment -UserId $userId -MessageId $messageId -BodyParameter $params

```