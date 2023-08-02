---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	"@odata.type" = "#Microsoft.OutlookServices.ItemAttachment"
	name = "name-value"
	item = @{
		"@odata.type" = "microsoft.graph.message"
	}
}

# A UPN can also be used as -UserId.
New-MgUserEventAttachment -UserId $userId -EventId $eventId -BodyParameter $params

```