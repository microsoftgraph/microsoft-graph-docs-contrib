---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	startDateTime = [System.DateTime]::Parse("2025-02-01T14:30:34.2444915-07:00")
	endDateTime = [System.DateTime]::Parse("2025-02-01T15:00:34.2464912-07:00")
	subject = "Encrypted Meeting"
	isEndToEndEncryptionEnabled = $true
}

# A UPN can also be used as -UserId.
New-MgUserOnlineMeeting -UserId $userId -BodyParameter $params

```