---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	"@odata.type" = "#microsoft.graph.referenceAttachment"
	Name = "Personal pictures"
	SourceUrl = "https://contoso.com/personal/mario_contoso_net/Documents/Pics"
	ProviderType = "oneDriveConsumer"
	Permission = "Edit"
	IsFolder = "True"
}

New-MgUserEventAttachment -UserId $userId -EventId $eventId -BodyParameter $params

```