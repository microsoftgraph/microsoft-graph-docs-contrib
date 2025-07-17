---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	startDateTime = [System.DateTime]::Parse("2019-07-12T14:30:34.2444915-07:00")
	endDateTime = [System.DateTime]::Parse("2019-07-12T15:00:34.2464912-07:00")
	subject = "User meeting"
	meetingTemplateId = "05b9ed5f-2ac3-4470-aae9-f4a0c30b1a4b"
}

# A UPN can also be used as -UserId.
New-MgBetaUserOnlineMeeting -UserId $userId -BodyParameter $params

```