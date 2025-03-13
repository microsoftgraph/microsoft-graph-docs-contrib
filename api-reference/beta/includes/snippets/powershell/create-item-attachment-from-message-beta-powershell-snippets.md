---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	"@odata.type" = "#microsoft.graph.itemAttachment"
	name = "Holiday event"
	item = @{
		"@odata.type" = "microsoft.graph.event"
		subject = "Discuss gifts for children"
		body = @{
			contentType = "HTML"
			content = "Let's look for funding!"
		}
		start = @{
			dateTime = "2016-12-02T18:00:00"
			timeZone = "Pacific Standard Time"
		}
		end = @{
			dateTime = "2016-12-02T19:00:00"
			timeZone = "Pacific Standard Time"
		}
	}
}

# A UPN can also be used as -UserId.
New-MgBetaUserMessageAttachment -UserId $userId -MessageId $messageId -BodyParameter $params

```