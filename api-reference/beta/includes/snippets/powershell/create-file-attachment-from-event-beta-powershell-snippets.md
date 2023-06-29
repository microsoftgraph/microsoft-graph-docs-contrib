---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	"@odata.type" = "#microsoft.graph.fileAttachment"
	name = "menu.txt"
	contentBytes = "bWFjIGFuZCBjaGVlc2UgdG9kYXk="
}

# A UPN can also be used as -UserId.
New-MgUserEventAttachment -UserId $userId -EventId $eventId -BodyParameter $params

```