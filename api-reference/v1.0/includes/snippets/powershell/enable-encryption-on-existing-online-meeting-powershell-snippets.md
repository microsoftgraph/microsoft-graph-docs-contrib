---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	isEndToEndEncryptionEnabled = $true
}

# A UPN can also be used as -UserId.
Update-MgUserOnlineMeeting -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params

```