---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	"@odata.type" = "#microsoft.graph.itemAttachment"
	name = "Holiday event"
	item = @{
		"@odata.type" = "microsoft.graph.event"
		subject = "Discuss gifts for children"
	}
}

# A UPN can also be used as -UserId.
New-MgUserEventAttachment -UserId $userId -EventId $eventId -BodyParameter $params

```