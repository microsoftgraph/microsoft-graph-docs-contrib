---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	subject = "Microsoft Ignite: Day 1"
	startDateTime = [System.DateTime]::Parse("2021-11-02T08:00:00-08:00")
	endDateTime = [System.DateTime]::Parse("2021-11-02T15:45:00-08:00")
	speakers = @(
		@{
			displayName = "Henry Ross"
			bio = "Chairman and Chief Executive Officer"
		}
		@{
			displayName = "Fred Ryan"
			bio = "CVP"
		}
	)
}

# A UPN can also be used as -UserId.
Update-MgUserOnlineMeetingRegistration -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params

```