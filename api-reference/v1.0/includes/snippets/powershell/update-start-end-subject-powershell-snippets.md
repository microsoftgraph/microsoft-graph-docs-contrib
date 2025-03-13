---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	startDateTime = [System.DateTime]::Parse("2020-09-09T14:33:30.8546353-07:00")
	endDateTime = [System.DateTime]::Parse("2020-09-09T15:03:30.8566356-07:00")
	subject = "Patch Meeting Subject"
}

# A UPN can also be used as -UserId.
Update-MgUserOnlineMeeting -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params

```