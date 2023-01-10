---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	StartDateTime = [System.DateTime]::Parse("2019-07-12T14:30:34.2444915-07:00")
	EndDateTime = [System.DateTime]::Parse("2019-07-12T15:00:34.2464912-07:00")
	Subject = "User meeting in Microsoft Teams channel."
	JoinMeetingIdSettings = @{
		IsPasscodeRequired = $false
	}
}

# A UPN can also be used as -UserId.
New-MgUserOnlineMeeting -UserId $userId -BodyParameter $params

```