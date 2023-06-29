---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	"@odata.type" = "#microsoft.graph.itemAttachment"
	name = "Holiday event"
	item = @{
		"@odata.type" = "microsoft.graph.event"
		subject = "Discuss gifts for children"
	}
}

# A UPN can also be used as -UserId.
New-MgUserOutlookTaskAttachment -UserId $userId -OutlookTaskId $outlookTaskId -BodyParameter $params

```