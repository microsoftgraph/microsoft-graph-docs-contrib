---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	"@odata.type" = "#microsoft.graph.referenceAttachment"
	name = "Personal pictures"
	sourceUrl = "https://contoso.com/personal/mario_contoso_net/Documents/Pics"
	providerType = "oneDriveConsumer"
	permission = "Edit"
	isFolder = "True"
}

# A UPN can also be used as -UserId.
New-MgUserMessageAttachment -UserId $userId -MessageId $messageId -BodyParameter $params

```