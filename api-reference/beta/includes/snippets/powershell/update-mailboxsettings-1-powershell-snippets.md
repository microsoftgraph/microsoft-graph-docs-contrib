---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	"@odata.context" = "https://graph.microsoft.com/beta/$metadata#Me/mailboxSettings"
	automaticRepliesSetting = @{
		status = "Scheduled"
		scheduledStartDateTime = @{
			dateTime = "2016-03-20T18:00:00.0000000"
			timeZone = "UTC"
		}
		scheduledEndDateTime = @{
			dateTime = "2016-03-28T18:00:00.0000000"
			timeZone = "UTC"
		}
	}
}

# A UPN can also be used as -UserId.
Update-MgBetaUserMailboxSetting -UserId $userId -BodyParameter $params

```